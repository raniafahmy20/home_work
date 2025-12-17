import 'package:account/cubits/login_cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitial());
  Future<void> getLoginState({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      await Future.delayed(Duration(seconds: 2), () {});
      emit(LoginSucc());
    } catch (e) {
      emit(LoginFailure(error: 'errror in sigin up'));
    }
  }
}
