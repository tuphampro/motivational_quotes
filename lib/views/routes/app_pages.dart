import 'package:get/get.dart';

import '../pages/main/quotes_app.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.MAIN,
      page: () => const QuotesApp(),
    ),
  ];
}
