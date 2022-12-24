import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult_controller.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_controller.dart';

class ConsultBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ConsultController>(ConsultController());
  }

}