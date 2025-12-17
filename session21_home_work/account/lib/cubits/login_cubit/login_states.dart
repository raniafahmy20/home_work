class LoginStates {}

class LoginSucc extends LoginStates {}

class LoginFailure extends LoginStates {
  final String error;
  LoginFailure({required this.error});
}

class LoginLoading extends LoginStates {}

class LoginInitial extends LoginStates {}
