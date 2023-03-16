import 'package:get/get_connect.dart';

class ApiGatewayBase extends GetConnect {
  ApiGatewayBase() {
    httpClient.baseUrl = 'http://mq.eptsky.com';

    httpClient.maxAuthRetries = 3;
    httpClient.timeout = const Duration(seconds: 60 * 3);
  }
}
