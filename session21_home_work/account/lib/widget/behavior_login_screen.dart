import 'package:account/cubits/login_cubit.dart';
import 'package:account/cubits/login_states.dart';
import 'package:account/widget/form_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BehaviorLoginScreen extends StatelessWidget {
  const BehaviorLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginInitial) {
          return;
        } else if (state is LoginLoading) {
          // Show loading
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Loading...")));
        } else if (state is LoginSucc) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Success")));
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Failed")));
        }
      },
      builder: (context, state) {
        return FormLoginScreen();
      },
    );
  }
}
