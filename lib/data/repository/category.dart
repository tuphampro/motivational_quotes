import 'package:dartz/dartz.dart';
import 'package:motivational_quotes/core/models/app/category.dart';

import '../../injector/injector.dart';
import '../network/base.dart';

class CategoryRepository {
  final _spinFreeMasterApi = getIt<ApiGatewayBase>();

  Future<Either<dynamic, List<CategoryModel>>> getCategory() async {
    try {
      final resp = await _spinFreeMasterApi.get(
          '/api/app/category/GetByPage?page=1&page_size=10&query=1=1&order_by');
      print(resp);

      if (resp.isOk && resp.body["meta"]["error_code"] == 200) {
        final data = resp.body["data"];

        final list = List<CategoryModel>.from(
            data.map((model) => CategoryModel.fromMap(model)));

        return Right(list);
      }
      return Left(resp);
    } catch (e, s) {
      return Left(e);
    }
  }
}
