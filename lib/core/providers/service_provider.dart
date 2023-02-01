import 'package:dio/dio.dart';
import 'package:hand_made/core/dio/helpers/basic_dio.dart';
import 'package:hand_made/core/dio/helpers/dio_with_out_token.dart';
import 'package:hand_made/core/providers/auth_info/auth_info_notipod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioWithoutTokenPod = Provider<Dio>((ref) {
  final dio = Dio();
  return dioWithoutToken(dio, ref);
});

final basicDioPod = Provider<Dio>((ref) {
  final dio = Dio();
  final authInfo = ref.watch(authInfoNotipod);
  // ignore: invalid_use_of_protected_member
  final token = authInfo.state.token;

  return basicDio(dio, token);
});
