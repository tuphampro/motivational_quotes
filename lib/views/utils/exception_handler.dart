import 'package:flutter/foundation.dart';

import '../../core/models/app/exceptions.dart';
import '../i18n/generated_locales/l10n.dart';

String exceptionHandler(GenericException failure) {
  Object error = failure.error;
  // final stack = failure.stack;
  // // final ISendLogRepository iSendLogRepository = getIt<ISendLogRepository>();
  // // iSendLogRepository.sendLog(error.toString());

  if (kDebugMode) {
    // var logger = Logger();
    // logger.d(error);
    // if (stack != null) logger.e(stack);
  }
  try {
    switch (error.runtimeType) {
      // case DioError:
      //   String message = "";
      //   error = (error as DioError);
      //   switch (error.type) {
      //     case DioErrorType.connectTimeout:
      //     case DioErrorType.sendTimeout:
      //     case DioErrorType.receiveTimeout:
      //       message = AppLocalizations.current.connectTimeout;
      //       break;
      //     default:
      //       message = error.response != null &&
      //               error.response!.data.toString().isNotEmpty
      //           ? error.response!.data['message'] ??
      //               error.response!.data['title'] ??
      //               error.response!.data['detail'] ??
      //               error.response!.data['error_description'] ??
      //               error.response!.data['error'] ??
      //               error.response!.data['errors']
      //                   .toString()
      //                   .replaceAll("{", "")
      //                   .replaceAll("}", "") ??
      //               error.message ??
      //               error.toString()
      //           : error.message;
      //   }

      //   return message;
      case NoInternetException:
        return AppLocalizations.current.noInternet;
      case ServerException:
        return (error as ServerException).message;
      default:
        return error.toString();
    }
  } catch (e) {
    // iSendLogRepository.sendLog(e.toString());
    return error.toString();
  }
}
