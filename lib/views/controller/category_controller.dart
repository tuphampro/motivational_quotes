import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:motivational_quotes/core/models/app/category.dart';
import 'package:motivational_quotes/data/repository/category.dart';

import '../../injector/injector.dart';

class CategoryController extends GetxController {
  final _categoryRepository = getIt<CategoryRepository>();
  final listData = RxList<CategoryModel>([]);
  final loading = false.obs;
  @override
  onInit() async {
    super.onInit();
    getCategories();
  }

  getCategories() async {
    loading.value = true;
    final quotes = await _categoryRepository.getCategory();
    loading.value = false;

    quotes.fold(
      (l) => print(l), // Get.dialog(AppDialog()),
      (r) {
        listData.value = r;
        listData.refresh();
      },
    );
  }
}
