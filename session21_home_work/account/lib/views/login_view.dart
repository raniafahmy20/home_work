import 'package:account/cubits/login_cubit/login_cubit.dart';
import 'package:account/cubits/login_cubit/login_states.dart';
import 'package:account/widget/component/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
        body: BlocConsumer<LoginCubit, LoginStates>(
          listener: (context, state) {
            if (state is LoginSucc) {
              GetSnakBar(context, snackMessage: 'Succ login');
            } else if (state is LoginFailure) {
              GetSnakBar(context, snackMessage: 'Failed login');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is LoginLoading,

              child: LoginViewBody(),
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
