import 'package:dio/dio.dart';
import 'package:hand_made/core/dio/helpers/setup_headers.dart';
import 'package:hand_made/core/dio/helpers/signin.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Dio dioWithoutToken(Dio dio, Ref ref) {
  setHeaders(dio);

  addSigning(dio, ref);
  return dio;
}

