abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class SignupSendRequestState extends AuthState {}

class SignupVerifiedState extends AuthState {}

class SignupErrorState extends AuthState {
  final String error;
  SignupErrorState(this.error);
}

class LoginSendRequestState extends AuthState {}

class LoggedInState extends AuthState {}

class LoggedOutState extends AuthState {}
