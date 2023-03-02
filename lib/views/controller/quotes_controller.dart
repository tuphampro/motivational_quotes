// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import '../../data/repository/quotes.dart';
import '../../injector/injector.dart';

class QuotesController extends GetxController {
  final _QuotesRepository = getIt<QuotesRepository>();
  final listData = RxList<dynamic>([]);
  final loading = false.obs;

  @override
  onInit() async {
    super.onInit();
    getCoupons();
  }

  getCoupons() async {
    loading.value = true;
    final coupons = await _QuotesRepository.getCoupons();
    coupons.fold(
      (l) => print(l), // Get.dialog(AppDialog()),
      (r) {
        listData.value = r;
      },
    );
    loading.value = false;
  }
}
