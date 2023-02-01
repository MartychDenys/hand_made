import 'package:dio/dio.dart';
import 'package:hand_made/core/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

addSigning(Dio dio, Ref ref) {
  dio.interceptors.add(
    QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          if (options.method == postRequest) {
            // final requestBody = options.data;
          }

          return handler.next(options);
        }
    ),
  );
}