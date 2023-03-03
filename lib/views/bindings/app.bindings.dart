import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';

import '../controller/app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Chỉ đặt những controller global
    Get.put(AppController());
    Get.put(QuotesController());

    // Get.put(AdsController());
    // Get.put(FirebaseController());
  }
}
