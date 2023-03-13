import 'package:get/get_connect.dart';

class ApiGatewayBase extends GetConnect {
  ApiGatewayBase() {
    // httpClient.defaultDecoder = CasesModel.fromJson;
    httpClient.baseUrl = 'http://mq.eptsky.com';

    httpClient.maxAuthRetries = 3;
    httpClient.timeout = const Duration(seconds: 60 * 2);
  }

  // Future<Response> getQuotes() => get('/spin/list');
}
