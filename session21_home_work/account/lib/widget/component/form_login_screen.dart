import 'package:account/cubits/login_cubit/login_cubit.dart';
import 'package:account/thems/app_colors.dart';
import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/custom/custom_elevated_button.dart';
import 'package:account/widget/custom/custom_text_field_password.dart';
import 'package:account/widget/custom/custom_text_form_field.dart';
import 'package:account/widget/custom/forget_password_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormLoginScreen extends StatefulWidget {
  const FormLoginScreen({super.key});

  @override
  State<FormLoginScreen> createState() => _FormLoginScreenState();
}

class _FormLoginScreenState extends State<FormLoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecorationModel.decorationFormScreen(),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            /// Email Field
            CustomTextFormField(
              labelText: 'Email',
              type: TextInputType.emailAddress,
              onSaved: (value) {
                email = value!;
              },
              prefixIcon: Icon(Icons.email_outlined),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              color: AppColors.blue,
            ),
            const SizedBox(height: 20),

            /// Password Field
            CustomTextFieldPassword(
              onSaved: (value) {
                password = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              labelText: 'Password',
              color: AppColors.blue,
            ),
            const SizedBox(height: 12),
            ForgetPasswordButton(),
            const SizedBox(height: 24),

            /// Login Button
            CustomElevatedButton(
              onPressed: () {
                print(email);
                print(password);
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<LoginCubit>().getLoginState(
                    email: email,
                    password: password,
                  );
                } else {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                  setState(() {});
                }
              },
              color: AppColors.blue,
              title: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
