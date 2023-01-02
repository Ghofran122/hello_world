import 'package:get/get.dart';
import 'package:hello_world/models/info_add.dart';
import 'package:hello_world/modules/estishara_app/info_add_screen/info_add_service.dart';

class AddInformationController extends GetxController{
  String? type = '';
  String? email = '';
  String? password = '';

  AddInformationService SignUpService = AddInformationService();

  /*void signupOnClick(){
    AddInformationModels AddInfoModels = AddInformationModels(
      *//*email: email,
      password: password,*//*
    );

    AddInformationService.addinfo(AddInfoModels);
  }*/
}