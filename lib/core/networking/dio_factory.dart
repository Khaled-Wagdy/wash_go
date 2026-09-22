import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:wash_go/core/networking/api_constants.dart';
import 'package:wash_go/main.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    const Duration duration = Duration(seconds: 30);

    if (_dio == null) {
      _dio = Dio(
        BaseOptions(
          baseUrl: ApiConstants.baseUrl,
          receiveTimeout: duration,
          connectTimeout: duration,
          sendTimeout: duration,
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );

      _dio!.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            if (token != null && token!.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
            }

            return handler.next(options);
          },
        ),
      );

      _dio!.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
          enabled: kDebugMode,
        ),
      );
    }

    return _dio!;
  }
}
