import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/info_add_screen/info_add_controller.dart';

class AddInformationBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<AddInformationController>(AddInformationController());
  }

}