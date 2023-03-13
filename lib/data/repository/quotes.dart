import 'package:dartz/dartz.dart';
import 'package:motivational_quotes/core/models/app/quote.dart';

import '../../injector/injector.dart';
import '../network/base.dart';

class QuotesRepository {
  final _spinFreeMasterApi = getIt<ApiGatewayBase>();

  Future<Either<dynamic, List<QuoteModel>>> getQuotes() async {
    try {
      final resp = await _spinFreeMasterApi.get(
          '/api/app/news/GetByPage?page=1&page_size=10&query=1=1&order_by');

      if (resp.isOk && resp.body["responseCode"] == 1) {
        final coupons = resp.body["coupons"];

        // final couponList = List<dynamic>.from(
        //     coupons.map((model) => dynamic.fromMap(model)));

        return Right([]);
      }
      return Left(resp);
    } catch (e, s) {
      return Left(e);
    }
  }
}
