/*import 'dart:ffi';

import 'package:hello_world/modules/bmi_app/bmi_screen/bmi_screen.dart';
import 'package:hello_world/modules/bmi_app/home/home.dart';
import 'package:hello_world/modules/bmi_app/home_screen/home_screen.dart';
import 'package:hello_world/modules/bmi_app/inc_dec/inc_dec.dart';
import 'package:hello_world/modules/bmi_app/login_screen/login_screen.dart';
import 'package:hello_world/modules/bmi_app/messenger_screen/messenger_screen.dart';*/
import 'package:flutter/material.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      SignIn(),
    );
  }

}
