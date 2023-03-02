import 'package:flutter/material.dart';
import 'package:get/get.dart';

showErrorSnackBarWidget(
    {required String message, int? duration, Widget? icon}) {
  if (Get.isSnackbarOpen) Get.back(closeOverlays: true);

  final snackBar = GetSnackBar(
    backgroundColor: Theme.of(Get.context!).errorColor,
    duration: duration == null ? null : Duration(seconds: duration),
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    padding: const EdgeInsets.all(15),
    borderRadius: 6,
    icon: icon,
    messageText: Text(
      message,
      style: const TextStyle(fontSize: 15, color: Colors.white),
    ),
    snackStyle: SnackStyle.FLOATING,
    isDismissible: true,
    shouldIconPulse: true,
    mainButton: IconButton(
      onPressed: () {
        if (Get.isSnackbarOpen) Get.back(closeOverlays: true);
      },
      icon: const Icon(Icons.close),
      color: Colors.white,
    ),
  );

  Get.showSnackbar(snackBar);
}
