import 'package:hand_made/core/providers/auth_info/auth_info_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthInfoNotifier extends StateNotifier<AuthInfoState> {
  AuthInfoNotifier() : super(const AuthInfoState());

  void updateAuthInfo({
    required String token,
    required String refreshToken,
    required String email,
  }) {
    state = state.copyWith(
      token: token,
      refreshToken: refreshToken,
      email: email,
    );
  }

  void updateToken(String token) {
    state = state.copyWith(token: token);
  }

  void updateRefreshToken(String refreshToken) {
    state = state.copyWith(refreshToken: refreshToken);
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }
}
