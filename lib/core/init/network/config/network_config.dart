import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gow_mobile/core/init/network/model/network_base_error.dart';

class NetworkConfig {
  String baseUrl;

  BaseOptions options;

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

  RequestOptions requestInterceptor(RequestOptions req) {
    return req;
  }

  Response responseInterceptor(Response response) {
    return response;
  }

  Object errorInterceptor(DioError e) {
    // final networkError = NetworkBaseError(, message)
    return NetworkBaseError(e.response.statusCode, ServiceError.fromJson(e.response.data).message);
  }
}
