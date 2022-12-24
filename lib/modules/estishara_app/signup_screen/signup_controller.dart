import 'package:get/get.dart';
import 'package:hello_world/models/signup.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_service.dart';

class SignUpController extends GetxController{
  String? name = '';
  String? email = '';
  String? password = '';
  String? passwordConfirm = '';

  SignupService SignUpService = SignupService();

  void signupOnClick(){
    SignupModels SignUpModels = SignupModels(
      name: name,
      email: email,
      password: password,
      passwordConfirm: passwordConfirm,
    );

    SignUpService.signup(SignUpModels);
  }
}