import 'package:account/thems/box_decoration_model.dart';
import 'package:account/views/signup_view.dart';
import 'package:account/widget/component/form_login_screen.dart';
import 'package:account/widget/component/footer_screen.dart';
import 'package:account/widget/component/header_login_screen.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorationModel.decorationLoginScreen(),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeaderLoginScreen(),
                // Login Form Card
                FormLoginScreen(),
                const SizedBox(height: 30),
                // Sign Up Link
                FoterScreen(
                  title: "Don't have an account? ",
                  pageName: 'Sign Up',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
