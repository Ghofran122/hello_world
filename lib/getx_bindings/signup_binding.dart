import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_controller.dart';

class SignupBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController());
  }

}