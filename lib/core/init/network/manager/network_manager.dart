import 'dart:convert';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:gow_mobile/core/init/network/config/network_config.dart';
import 'package:gow_mobile/core/init/network/config/network_constant.dart';
import 'package:flutter/material.dart';

import '../model/network_base_model.dart';
import '../model/network_request_type.dart';

class NetworkManager with DioMixin implements Dio {
  static NetworkManager _instance;
  NetworkConfig config;
  static NetworkManager get instance {
    if (_instance == null) {
      _instance = NetworkManager._init();
    }
    return _instance;
  }

  NetworkManager._init() {
    config = NetworkConfig();
    this.options = config.options;
    this.interceptors.add(LogInterceptor(responseBody: true));
    this.interceptors.add(
          InterceptorsWrapper(
              onError: (err) => config.errorInterceptor(err),
              onRequest: (req) => config.requestInterceptor(req),
              onResponse: (res) => config.responseInterceptor(res)),
        );
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  Future make<T extends NetworkBaseModel>(String path,
      {Map<String, dynamic> queryParameters,
      Options options,
      CancelToken cancelToken,
      @required T parserModel,
      dynamic data,
      @required NetworkRequestType method,
      ProgressCallback onReceiveProgress}) async {
    final options = Options();
    options.method = getNetworkRequestType(method);
    final body = getBodyModel(data);

    try {
      Response response = await request(path, data: body, options: options);
      return parseBody<T>(response.data, parserModel);
    } catch (e) {
      return onError(e);
    }
  }

  String getNetworkRequestType(NetworkRequestType type) {
    switch (type) {
      case NetworkRequestType.GET:
        return NetworkConsants.instance.get;
      case NetworkRequestType.POST:
        return NetworkConsants.instance.post;
      default:
        throw NetworkConsants.instance.empty;
    }
  }

  Map getBodyModel(dynamic data) {
    if (data == null) {
      return data;
    } else if (data is NetworkBaseModel) {
      return data.toJson();
    } else {
      return jsonDecode(data);
    }
  }

  dynamic parseBody<T extends NetworkBaseModel>(dynamic responseBody, T model) {
    try {
      clear();
      if (responseBody is List) {
        return responseBody.map((data) => model.fromJson(data)).toList();
      } else if (responseBody is Map) {
        return model.fromJson(responseBody) as T;
      } else {
        return responseBody;
      }
    } catch (e) {
      return responseBody;
    }
  }

  onError(DioError error) {
    return error.error;
  }
}
