import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hand_made/core/shared/show_snack_bar.dart';
import 'package:hand_made/features/auth/presentation/providers/auth_stpod_union.dart';
import 'package:hand_made/features/auth/presentation/providers/auth_union.dart';
import 'package:hand_made/features/auth/presentation/providers/sign_up_pod.dart';
import 'package:hand_made/features/auth/presentation/screens/components/sign_up/components/sign_up_form.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpScreen extends HookConsumerWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final signUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final nameController = useTextEditingController();

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SignUpForm(
                formKey: signUpKey,
                labelText: 'Enter your email',
                emailController: emailController,
                passwordController: passwordController,
                nameController: nameController,
              ),
              const Spacer(),
              CustomElevatedButton(
                buttonText: 'Login',
                onPressed: () {
                  ref.read(authStateStpod.notifier).state =
                      const AuthUnion.signIn();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                buttonText: 'Create account',
                onPressed: () async {
                  final response = await ref.read(signUpPod).call(
                        emailController.text,
                        passwordController.text,
                        nameController.text,
                      );

                  _handleResponse(response, context, ref);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  _handleResponse(int response, BuildContext context, WidgetRef ref) {
    if (response == 200 || response == 201) {
      ref.read(authStateStpod.notifier).state = const AuthUnion.signIn();
      ShowSnackBar.show(context, 'Success');
    } else {
      ShowSnackBar.show(context, 'Some Error');
    }
  }
}
