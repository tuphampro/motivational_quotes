import 'package:get/get.dart';

import '../controller/app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Chỉ đặt những controller global
    Get.put(AppController());
    // Get.put(AdsController());
    // Get.put(FirebaseController());
  }
}
