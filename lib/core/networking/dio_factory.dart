import 'package:dio/dio.dart';
import 'package:dio_pretty_logger/dio_pretty_logger.dart';

class DioFactory {
  late Dio dio;

  init() {
    dio = Dio(BaseOptions(baseUrl: ''));

    dio.interceptors.add(prettyInterceptorsWrapper);
  }
}
