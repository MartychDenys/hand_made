import 'package:dio/dio.dart';
import 'package:hand_made/core/constants.dart';
import 'package:hand_made/features/auth/data/model/request/sign_in/sign_in_request_model.dart';
import 'package:hand_made/features/auth/data/model/request/sign_up/sign_up_request_model.dart';
import 'package:hand_made/features/auth/data/model/response/sign_in_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<SignInResponseModel> signIn(SignInRequestModel model);
  Future<int> signUp(SignUpRequestModel model);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<SignInResponseModel> signIn(SignInRequestModel model) async {
    try {
      final response = await dio.post(
        '${apiUrl}accounts/login/',
        data: model.toJson(),
      );

      return SignInResponseModel.fromJson(
          response.data
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> signUp(SignUpRequestModel model) async {
    try {
      final response = await dio.post(
        '${apiUrl}accounts/register/',
        data: model.toJson(),
      );

      return Future.value(response.statusCode);
    } catch (e) {
      rethrow;
    }
  }
}
