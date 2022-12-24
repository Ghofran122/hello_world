import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_controller.dart';

class SigninBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<SignInController>(SignInController());
  }

}