import 'package:get/get.dart';
import 'package:hello_world/models/signin.dart';
import 'package:hello_world/models/signup.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_service.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_service.dart';

class SignInController extends GetxController{
  String? type = '';
  String? email = '';
  String? password = '';

  SigninService SignUpService = SigninService();

  void signupOnClick(){
    SigninModels SignInModels = SigninModels(
      email: email,
      password: password,
    );

    SignUpService.signin(SignInModels);
  }
}