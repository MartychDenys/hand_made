import 'package:hand_made/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:hand_made/features/auth/data/model/request/sign_in/sign_in_request_model.dart';
import 'package:hand_made/features/auth/data/model/request/sign_up/sign_up_request_model.dart';
import 'package:hand_made/features/auth/data/model/response/sign_in_response_model.dart';
import 'package:hand_made/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<SignInResponseModel> signIn(String email, String password) async {
    final model = SignInRequestModel(email: email, password: password);
    try {
      final response = await authRemoteDataSource.signIn(model);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> signUp(String email, String password, String name) async {
    final model = SignUpRequestModel(
      email: email,
      password: password,
      username: name,
    );

    final response = await authRemoteDataSource.signUp(model);

    return response;
  }
}
