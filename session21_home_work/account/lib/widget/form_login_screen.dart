import 'package:account/cubits/login_cubit.dart';
import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/custom_elevated_button.dart';
import 'package:account/widget/custom_text_field_password.dart';
import 'package:account/widget/custom_text_form_field.dart';
import 'package:account/widget/forget_password_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormLoginScreen extends StatefulWidget {
  const FormLoginScreen({super.key});

  @override
  State<FormLoginScreen> createState() => _FormLoginScreenState();
}

class _FormLoginScreenState extends State<FormLoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecorationModel.decorationFormLoginScreen(),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            /// Email Field
            CustomTextFormField(
              labelText: 'Email',
              type: TextInputType.emailAddress,
              iconData: Icons.email_outlined,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              color: const Color(0xFF667eea),
            ),
            const SizedBox(height: 20),

            /// Password Field
            CustomTextFieldPassword(
              onChanged: (value) {},
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
              color: const Color(0xFF667eea),
              obscurePassword: _obscurePassword,
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
            const SizedBox(height: 12),
            ForgetPasswordButton(),
            const SizedBox(height: 24),

            /// Login Button
            CustomElevatedButton(
              onPressed: () async {
                context.read<LoginCubit>().getLoginState(formKey);
              },
              color: const Color(0xFF667eea),
              title: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
