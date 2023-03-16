import 'package:dartz/dartz.dart';
import 'package:motivational_quotes/core/models/app/server_respone.dart';

import '../../injector/injector.dart';
import '../network/base.dart';

class QuotesRepository {
  final _spinFreeMasterApi = getIt<ApiGatewayBase>();

  Future<Either<dynamic, ServerResponse>> getQuotes(int page) async {
    try {
      final resp = await _spinFreeMasterApi.get(
          '/api/app/news/GetByPage?page=$page&page_size=50&query=1=1&order_by');

      return Right(ServerResponse.fromMap(resp.body));
    } catch (e, s) {
      return Left(e);
    }
  }
}
