import 'package:dio/dio.dart';

void setHeaders(Dio dio) {
  dio.options.headers['accept'] = 'application/json';
  dio.options.headers['Content-Type'] = 'application/json; charset=utf-8';
  // dio.options.headers['Accept-Language'] = '';
  // dio.options.headers['From'] = '';
  // dio.options.headers['User-Agent'] = '';
}

void setHeadersWithToken(Dio dio, [String? token]) {
  dio.options.headers['accept'] = 'application/json';
  dio.options.headers['Content-Type'] = 'application/json; charset=utf-8';
  dio.options.headers['Authorization'] = 'Bearer $token';

  // dio.options.headers['Accept-Language'] = '';
  // dio.options.headers['From'] = '';
  // dio.options.headers['User-Agent'] = '';
}