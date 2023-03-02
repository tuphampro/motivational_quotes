// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unrelated_type_equality_checks, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/pages/main/quotes_app.dart';

import '../../widgets/zoom_drawer.dart';
import 'main_body.dart';
import 'main_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
      child: ZoomDrawer(
        controller: drawerController,
        borderRadius: 24,
        showShadow: true,
        slideWidth: MediaQuery.of(context).size.width * 0.82,
        angle: 0,
        isRtl: true,
        androidCloseOnBackTap: true,
        menuScreenTapClose: true,
        mainScreenTapClose: true,
        menuBackgroundColor: Colors.transparent,
        backgroundImage: Image.asset(
          'assets/images/background.png',
          width: Get.size.width,
          height: Get.size.height,
          fit: BoxFit.fill,
        ),
        mainScreen: MainBody(),
        menuScreen: MainMenu(),
      ),
    );
  }
}
