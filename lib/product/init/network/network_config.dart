import 'dart:io';

import 'package:vexana/vexana.dart';

class NetworkConfig {
  late String baseUrl;

  late BaseOptions options;

  NetworkConfig() {
    if (Platform.isIOS) {
      baseUrl = "http://localhost:4000/";
    } else {
      baseUrl = "http://10.0.2.2:4000/";
    }
    options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      contentType: ContentType.json.value,
    );
  }
}
