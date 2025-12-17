import 'package:account/cubits/sign_up_cubit.dart';
import 'package:account/thems/app_colors.dart';
import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/custom/custom_elevated_button.dart';
import 'package:account/widget/custom/custom_text_field_password.dart';
import 'package:account/widget/custom/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSignUpScreen extends StatefulWidget {
  const FormSignUpScreen({super.key});

  @override
  State<FormSignUpScreen> createState() => _FormSignUpScreenState();
}

class _FormSignUpScreenState extends State<FormSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? password;
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? confirmPassword;
  String? email;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecorationModel.decorationFormScreen(),
      child: Form(
        key: _formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            // Name Field
            CustomTextFormField(
              labelText: 'Full Name',
              type: TextInputType.name,
              prefixIcon: Icon(Icons.person_outline),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              color: AppColors.green,
            ),
            const SizedBox(height: 8),

            // Email Field
            CustomTextFormField(
              onSaved: (value) {
                email = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              color: AppColors.green,
              labelText: 'Email',
              prefixIcon: Icon(Icons.email_outlined),
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 8),
            CustomTextFieldPassword(
              onSaved: (value) {
                password = value;
              },
              onChanged: (value) {
                password = value;
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
              color: AppColors.green,
            ),
            // Password Field
            const SizedBox(height: 8),
            CustomTextFieldPassword(
              onSaved: (value) {
                confirmPassword = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please confirm your password';
                }
                if (value != password) {
                  return 'Passwords do not match';
                }
                return null;
              },
              labelText: 'Confirm Password',
              color: AppColors.green,
            ),
            // Confirm Password Field
            const SizedBox(height: 18),
            // Signup Button
            CustomElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  context.read<SignUpCubit>().getSignUpStates(
                    email: email!,
                    password: password!,
                  );
                } else {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                  setState(() {});
                }
              },
              color: AppColors.green,
              title: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
