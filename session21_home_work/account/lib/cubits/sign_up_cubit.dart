import 'package:account/cubits/sign_up_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitial());
  getSignUpStates(GlobalKey<FormState> formKey) async {
    emit(SignUpLoadding());
    try {
      if (formKey.currentState!.validate()) {
        emit(SignUpSucc());
        await Future.delayed(Duration(seconds: 2), () {
          throw Exception('Failed to sign up');
        });
      } else {
        emit(SignUpFailure());
      }
    } catch (e) {
      return 'errrror on sign up';
    }
  }
}
