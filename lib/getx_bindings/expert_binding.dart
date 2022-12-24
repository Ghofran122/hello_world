import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert_controller.dart';

class ExpertBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ExpertController>(ExpertController());
  }

}