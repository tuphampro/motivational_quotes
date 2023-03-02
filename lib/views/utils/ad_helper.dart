// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2312229824143853/2928575739';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2312229824143853/4592462455';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-2312229824143853/2541014184";
    } else if (Platform.isIOS) {
      return "ca-app-pub-2312229824143853/8009512029";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
