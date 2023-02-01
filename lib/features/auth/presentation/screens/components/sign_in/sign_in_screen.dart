import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hand_made/core/providers/route/router_delegate_provider.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hand_made/features/auth/data/model/response/sign_in_response_model.dart';
import 'package:hand_made/features/auth/presentation/providers/auth_stpod_union.dart';
import 'package:hand_made/features/auth/presentation/providers/auth_union.dart';
import 'package:hand_made/features/auth/presentation/providers/sign_in_prod.dart';
import 'package:hand_made/features/auth/presentation/screens/components/sign_in/components/sign_in_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../widgets/custom_elevated_button.dart';

class SignInScreen extends HookConsumerWidget {
  SignInScreen({Key? key}) : super(key: key);
  final signInKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        SignInForm(
          formKey: signInKey,
          emailController: emailController,
          passwordController: passwordController,
        ),
        const Spacer(),
        CustomElevatedButton(
          buttonText: 'Register',
          onPressed: () {
            ref.read(authStateStpod.notifier).state = const AuthUnion.signUp();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
          buttonText: 'Sign In',
          onPressed: () async {
            // if (signInKey.currentState!.validate()) {
            final response = await ref.read(signInPod).call(
                  emailController.text.isNotEmpty
                      ? emailController.text
                      : 'test00@example.com',
                  passwordController.text.isNotEmpty
                      ? passwordController.text
                      : '12345678dD',
                );

            _handleResponse(response, ref);
            // }
          },
        ),
        CustomElevatedButton(
          buttonText: 'Error state',
          onPressed: () {
            Navigator.pushNamed(context, '/main-screen');
            // ref.read(authStateStpod.notifier).state = AuthUnion.error('Some error');
          },
        ),
      ],
    );
  }

  _handleResponse(SignInResponseModel? response, WidgetRef ref) {
    if (response is SignInResponseModel) {
      ref.read(routerDelegateProvider).navigate([MainSegment()]);
    } else {
      // Todo: add snackBar
    }
  }
}
