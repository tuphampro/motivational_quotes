// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/widgets/zoom_drawer_config.dart';

import '../../controller/app_controller.dart';
import '../../i18n/generated_locales/l10n.dart';
import '../../widgets/show_snackbar_widget.dart';
import 'main_page.dart';

final drawerController = ZoomDrawerController();

class QuotesApp extends StatefulWidget {
  const QuotesApp({Key? key}) : super(key: key);

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  final appController = Get.find<AppController>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    appController.isNetworkConnected.listen(_getNetworkStatus);

    Future.delayed(
      const Duration(seconds: 3),
      () => _getNetworkStatus(appController.isNetworkConnected.value),
    );
  }

  _getNetworkStatus(bool value) {
    if (value == false) {
      showErrorSnackBarWidget(
        message: AppLocalizations.current.noInternet,
        icon: const Icon(
          Icons.wifi_off,
          color: Colors.white,
          size: 32,
        ),
      );
    } else {
      if (Get.isSnackbarOpen) Get.back(closeOverlays: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: prefer-extracting-callbacks
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MainPage(),
    );
  }
}
