import 'package:account/cubits/sign_up_cubit.dart';
import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/custom_elevated_button.dart';
import 'package:account/widget/custom_text_field_password.dart';
import 'package:account/widget/custon_name_email_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSignUpScreen extends StatefulWidget {
  const FormSignUpScreen({super.key});

  @override
  State<FormSignUpScreen> createState() => _FormSignUpScreenState();
}

class _FormSignUpScreenState extends State<FormSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String password = '';
  String confirmPassword = '';

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecorationModel.decorationFormSignUp(),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Name Field
            CustonNameEmailFormField(),
            const SizedBox(height: 8),
            CustomTextFieldPassword(
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
              color: Color(0xFF11998e),
              obscurePassword: _obscurePassword,
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
            // Password Field
            const SizedBox(height: 8),
            CustomTextFieldPassword(
              onChanged: (value) {
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
              color: Color(0xFF11998e),
              obscurePassword: _obscureConfirmPassword,
              onPressed: () {
                setState(() {
                  _obscureConfirmPassword = !_obscureConfirmPassword;
                });
              },
            ),
            // Confirm Password Field
            const SizedBox(height: 18),
            // Signup Button
            CustomElevatedButton(
              onPressed: () async {
                context.read<SignUpCubit>().getSignUpStates(_formKey);
              },
              color: Color(0xFF11998e),
              title: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
