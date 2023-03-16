import 'package:dartz/dartz.dart';
import 'package:motivational_quotes/core/models/app/server_respone.dart';

import '../../injector/injector.dart';
import '../network/base.dart';

class CategoryRepository {
  final _spinFreeMasterApi = getIt<ApiGatewayBase>();

  Future<Either<dynamic, ServerResponse>> getCategory() async {
    try {
      final resp = await _spinFreeMasterApi.get(
          '/api/app/category/GetByPage?page=1&page_size=10&query=1=1&order_by');

      return Right(ServerResponse.fromMap(resp.body));
    } catch (e, s) {
      return Left(e);
    }
  }
}
