import 'package:account/cubits/sign_up_cubit.dart';
import 'package:account/thems/box_decoration_model.dart';
import 'package:account/widget/behavior_sign_up.dart';
import 'package:account/widget/form_sign_up_screen.dart';
import 'package:account/widget/icon_view.dart';
import 'package:account/widget/text_bold.dart';
import 'package:account/widget/text_button_underline.dart';
import 'package:account/widget/text_regular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        body: Container(
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
                    IconView(iconData: Icons.person_add_outlined),
                    const SizedBox(height: 20),
                    // Welcome Text
                    TextBold(title: 'Create Account'),
                    const SizedBox(height: 8),
                    TextRegular(title: 'Sign up to get started'),
                    const SizedBox(height: 20),
                    // Signup Form Card
                    BehaviorSignUp(),
                    const SizedBox(height: 10),

                    // Login Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                          ),
                        ),
                        TextButtonUnderline(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          title: 'Login',
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
