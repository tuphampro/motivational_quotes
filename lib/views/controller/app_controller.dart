// ignore_for_file: unnecessary_new

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../injector/injector.dart';

class AppController extends GetxController {
  final isNetworkConnected = false.obs;
  final internetConnection = getIt<InternetConnectionChecker>();
  final privacyAccepted = 0.obs;
  @override
  void onInit() {
    super.onInit();
    internetChecker();
  }

  internetChecker() async {
    isNetworkConnected.value = await internetConnection.hasConnection;

    Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (result != ConnectivityResult.none) {
        isNetworkConnected.value =
            await InternetConnectionChecker().hasConnection;
      } else {
        isNetworkConnected.value = false;
      }
    });
  }
}
