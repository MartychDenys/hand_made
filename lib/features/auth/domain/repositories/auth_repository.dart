import 'package:hand_made/features/auth/data/model/response/sign_in_response_model.dart';

abstract class AuthRepository {
  Future<SignInResponseModel> signIn(String email, String password);
  Future<int> signUp(String email, String password, String name);
}