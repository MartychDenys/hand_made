import 'package:dio/dio.dart';
import 'package:hand_made/core/dio/helpers/setup_headers.dart';

Dio basicDio(Dio dio, String token) {
  setHeadersWithToken(dio, token);

  return dio;
}
