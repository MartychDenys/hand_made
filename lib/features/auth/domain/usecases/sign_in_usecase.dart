import 'package:hand_made/features/auth/domain/repositories/auth_repository.dart';
import 'package:hand_made/features/auth/presentation/providers/auth_stpod_union.dart';
import 'package:hand_made/features/auth/presentation/providers/auth_union.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/providers/auth_info/auth_info_notipod.dart';
import '../../data/model/response/sign_in_response_model.dart';

class SignInUseCase {
  final AuthRepository authRepository;
  final Ref ref;

  SignInUseCase({
    required this.authRepository,
    required this.ref,
  });

  Future<SignInResponseModel> call(String email, String password) async {
    final authInfo = ref.read(authInfoNotipod.notifier);
    SignInResponseModel response;

    try {
      response = await authRepository.signIn(email, password);

      authInfo.state.updateAuthInfo(
        token: response.token,
        refreshToken: response.refreshToken,
        email: email,
      );

      return response;
    } catch (e) {
      ref.read(authStateStpod.notifier).state = AuthUnion.error(e.toString());
      throw Exception();
    }
  }
}
