import 'package:account/cubits/sign_up_cubit.dart';
import 'package:account/cubits/sign_up_states.dart';
import 'package:account/widget/form_sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BehaviorSignUp extends StatelessWidget {
  const BehaviorSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
      builder: (context, state) {
        return FormSignUpScreen();
      },
      listener: (context, state) {
        if (state is SignUpLoadding) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Loading...")));
        } else if (state is SignUpSucc) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Success")));
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Failed")));
        }
      },
    );
  }
}
