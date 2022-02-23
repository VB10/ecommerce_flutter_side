import 'dart:io';

import 'package:vexana/vexana.dart';

class NetworkConfig {
  late String baseUrl;

  late BaseOptions options;

  NetworkConfig() {
    if (Platform.isAndroid) {
      // for Genymotion emulator
      baseUrl = 'http://10.0.3.2:3000/';
      // for default AVD emulator
      // baseUrl = 'http://10.0.2.2:3000/';
    } else {
      baseUrl = 'http://localhost:3000/';
    }
    options = BaseOptions(baseUrl: baseUrl);
  }
}
