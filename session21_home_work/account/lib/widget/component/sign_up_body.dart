import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/component/form_sign_up_screen.dart';
import 'package:account/widget/component/footer_screen.dart';
import 'package:account/widget/component/header_sign_up.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorationModel.decorationSignUpScreen(),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo/Icon
                HeaderSignUp(),
                // Signup Form Card
                FormSignUpScreen(),
                const SizedBox(height: 10),
                FoterScreen(
                  title: "Already have an account? ",
                  pageName: 'Login',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                // Login Link
              ],
            ),
          ),
        ),
      ),
    );
  }
}
