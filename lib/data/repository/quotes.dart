import 'package:dartz/dartz.dart';

import '../../injector/injector.dart';
import '../network/base.dart';

class SpinFreeMasterRepository {
  final _spinFreeMasterApi = getIt<ApiGatewayBase>();

  Future<Either<dynamic, List<dynamic>>> getCoupons() async {
    final resp = await _spinFreeMasterApi.post('/spin/list', {});

    try {
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
