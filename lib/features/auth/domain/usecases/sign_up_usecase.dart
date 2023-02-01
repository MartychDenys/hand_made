import 'package:hand_made/features/auth/domain/repositories/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpUsecase {
  final AuthRepository authRepository;
  final Ref ref;

  SignUpUsecase({
    required this.authRepository,
    required this.ref,
  });

  Future<int> call(String email, String password, String name) async {
    final response = await authRepository.signUp(email, password, name);
    return response;
  }
}
