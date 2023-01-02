import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_controller.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_controller.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/sing_up.dart';
import 'package:hello_world/shared/components/components.dart';

class First extends StatefulWidget {

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  /*SignInController controllerin = Get.find();*/
  /*SignUpController controllerup = Get.find();*/

  List<String> types = ['user', 'expert'];
  String? selectedType = 'user';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Estishara',
            style: TextStyle(
              fontSize: 75.0,
              color: Colors.indigoAccent
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Use application as:',
                  style: TextStyle(
                      fontSize: 25.0
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultDropdownButtonFormField(
                  items: types,
                  selectedItem: selectedType!,
                  onChange: (item) => setState(() {
                    selectedType = item;
                  }),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          defaultMaterialButtonText(
              colorMaterialButton: Colors.indigoAccent,
              text: Text(
                'Start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              hight: 50.0,
              borderSideButton: BorderSide.none,
              onPresse: (){
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                  //(route) => false,
                );*/
                Get.toNamed('/signin');
                /*p();*/
              }
          ),
        ],
      ),
    );
  }
  /*void p(){
    controllerup.type = selectedType;
    print(controllerup.type);
    *//*print(controllerin.type);*//*
  }*/
}