import 'package:flutter/material.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hand_made/features/auth/presentation/screens/components/auth_error_screen.dart';
import 'package:hand_made/features/auth/presentation/screens/components/sign_in/sign_in_screen.dart';
import 'package:hand_made/features/auth/presentation/screens/components/sign_up/sign_up_screen.dart';
import 'package:hand_made/core/shared/scaffold_with_padding.dart';
import '../providers/auth_stpod_union.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen(this.segment, {Key? key}) : super(key: key);
  final AuthSegment segment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUnion = ref.watch(authStateStpod);

    return ScaffoldWithPadding24(
      verticalPadding: 8,
      child: authUnion.when(
        error: (String error) => AuthErrorScreen(
          error: error,
        ),
        signIn: () => SignInScreen(),
        signUp: () => SignUpScreen(),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
