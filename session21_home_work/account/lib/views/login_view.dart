import 'package:account/cubits/login_cubit.dart';
import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/behavior_login_screen.dart';
import 'package:account/widget/icon_view.dart';
import 'package:account/widget/text_bold.dart';
import 'package:account/widget/text_button_underline.dart';
import 'package:account/widget/text_regular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: Container(
          decoration: BoxDecorationModel.decorationLoginScreen(),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo/Icon
                    IconView(iconData: Icons.lock_outline),
                    const SizedBox(height: 40),
                    // Welcome Text
                    TextBold(title: 'Welcome Back'),
                    const SizedBox(height: 8),
                    TextRegular(title: 'Sign in to continue'),
                    const SizedBox(height: 50),
                    // Login Form Card
                    BehaviorLoginScreen(),
                    const SizedBox(height: 30),
                    // Sign Up Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                          ),
                        ),
                        TextButtonUnderline(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupView(),
                              ),
                            );
                          },
                          title: 'Sign Up',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
