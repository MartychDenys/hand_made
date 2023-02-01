import 'package:flutter/material.dart';
import 'package:hand_made/features/auth/presentation/helpers/email_valid.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
    required this.formKey,
    required this.labelText,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  }) : super(key: key);

  final GlobalKey formKey;
  final String labelText;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: emailController,
                labelText: 'Email',
                autofocus: true,
                validator: (String? email) {
                  if (email!.isEmpty) {
                    return "Email must be required";
                  }
                  if (!isEmailValid(email)) {
                    return "Enter correct email";
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                controller: passwordController,
                labelText: 'Password',
                validator: (String? password) {
                  if (password!.isEmpty) {
                    return "Password must be required";
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                controller: nameController,
                labelText: 'Name',
                validator: (String? name) {
                  if (name!.isEmpty) {
                    return "Name must be required";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
