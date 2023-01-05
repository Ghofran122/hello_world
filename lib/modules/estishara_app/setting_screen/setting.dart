import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/shared/components/components.dart';

class Setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        /*leading: IconButton(
            color: Colors.grey[100],
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigoAccent,
            ),
            onPressed: (){
              *//*Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Expert(),
                  ));*//*
              //Get.toNamed('/expertProfilePersonal');
            }),*/
        title: Text(
          'Setting',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 40.0,
          bottom: 20.0,
          start: 30.0,
          end: 30.0,
        ),
        child: Column(
          children: [
            defaultTextButton(
              titleAdvice: 'Sign out',
              onPressTB: (){
                Get.toNamed('/first');
              },
            ),
          ],
        ),
      ),
    );
  }
}
