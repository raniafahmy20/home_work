import 'package:account/cubits/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitial());
  getLoginState(GlobalKey<FormState> formKey) async {
    bool result = formKey.currentState!.validate();
    emit(LoginLoading());
    try {
      {
        if (result) {
          await Future.delayed(Duration(seconds: 2), () {});
          emit(LoginSucc());
        } else {
          emit(LoginFailure());
        }
      }
    } catch (e) {
      return 'error';
    }
  }
}
