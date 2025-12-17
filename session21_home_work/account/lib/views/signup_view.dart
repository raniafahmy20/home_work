import 'package:account/cubits/login_cubit/login_states.dart';
import 'package:account/cubits/sign_up_cubit.dart';
import 'package:account/cubits/sign_up_states.dart';
import 'package:account/widget/component/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
        body: BlocConsumer<SignUpCubit, SignUpStates>(
          listener: (context, state) {
            if (state is SignUpSucc) {
              GetSnakBar(context, snackMessage: 'Succ sign up');
            } else if (state is SignUpFailure) {
              GetSnakBar(context, snackMessage: 'Faild sign up');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is SignUpLoadding,
              child: SignUpBody(),
            );
          },
        ),
      ),
    );
  }

  void GetSnakBar(BuildContext context, {required String snackMessage}) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(snackMessage)));
  }
}
