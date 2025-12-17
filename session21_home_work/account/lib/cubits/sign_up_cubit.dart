import 'package:account/cubits/sign_up_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> getSignUpStates({
    required String email,
    required String password,
  }) async {
    emit(SignUpLoadding());
    try {
      await Future.delayed(Duration(seconds: 2), () {});
      emit(SignUpSucc());
    } catch (e) {
      emit(SignUpFailure(errorMessage: 'error in SignUp'));
    }
  }
}
