abstract class SigninState {}

class SigninInitialState extends SigninState {}

class SigninLoadingState extends SigninState {}

class SigninSuccessState extends SigninState {}

class SigninErrorState extends SigninState {
  final String error;
  SigninErrorState(this.error);
}