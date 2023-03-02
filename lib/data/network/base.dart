import 'package:get/get_connect.dart';

class ApiGatewayBase extends GetConnect {
  ApiGatewayBase() {
    // httpClient.defaultDecoder = CasesModel.fromJson;
    httpClient.baseUrl = 'https://coinmaster.shop';

    httpClient.maxAuthRetries = 3;
    httpClient.timeout = const Duration(seconds: 60 * 2);
  }

  // Future<Response> getCoupons() => get('/spin/list');
}
