class SignUpStates {}

class SignUpLoadding extends SignUpStates {}

class SignUpSucc extends SignUpStates {}

class SignUpFailure extends SignUpStates {
  final String errorMessage;
  SignUpFailure({required this.errorMessage});
}

class SignUpInitial extends SignUpStates {}
