import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:get/get.dart';

import 'app_config.dart';
import 'injector/injector.dart';
import 'views/bindings/app.bindings.dart';
import 'views/i18n/generated_locales/l10n.dart';
import 'views/pages/main/quotes_app.dart';
import 'views/routes/app_pages.dart';

main() async {
  // Errors not caught by Flutter
  runZonedGuarded(() async {
    await bootstrapApp();
  }, (Object error, StackTrace stack) {});
}

bootstrapApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  await configureDependencies(AppConfig.environment);
  // Errors caught by Flutter
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };

  // /// Cấu hình status bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      // systemNavigationBarDividerColor: Colors.transparent,
      // systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(GetMaterialApp(
    color: Colors.white,
    home: QuotesApp(),

    // khởi tạo các controller, thành phần phụ thuộc khác
    initialBinding: AppBinding(),
    // themeMode: ThemeMode.light,
    theme: ThemeData(
      fontFamily: AppConfig.fontFamily,
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    ),
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.noTransition,
    locale: Locale(AppConfig.language),
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      AppLocalizations.delegate,
    ],
    supportedLocales: AppLocalizations.delegate.supportedLocales,
    getPages: AppPages.routes,
  ));
}
