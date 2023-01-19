import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_starter_app/constants/dart_define_arguments.dart';
import 'package:flutter_starter_app/constants/network_constants.dart';

abstract class ApiManager {
  static Dio getDioClient() {
    final options = BaseOptions(
      connectTimeout: NetworkConstants.apiConnectTimeout,
      receiveTimeout: NetworkConstants.apiReceiveTimeout,
      sendTimeout: NetworkConstants.apiSendTimeout,
      contentType: Headers.formUrlEncodedContentType,
      baseUrl: DartDefineArgs.baseUrl,
    );

    return Dio(options);
  }
}