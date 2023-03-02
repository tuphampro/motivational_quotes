// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import '../../data/repository/quotes.dart';
import '../../injector/injector.dart';

class HomeController extends GetxController {
  final _spinFreeMasterRepository = getIt<SpinFreeMasterRepository>();
  final listData = RxList<dynamic>([]);
  final loading = false.obs;

  @override
  onInit() async {
    super.onInit();
    getCoupons();
  }

  getCoupons() async {
    loading.value = true;
    final coupons = await _spinFreeMasterRepository.getCoupons();
    coupons.fold(
      (l) => print(l), // Get.dialog(AppDialog()),
      (r) {
        listData.value = r;
      },
    );
    loading.value = false;
  }
}
