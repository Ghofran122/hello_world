import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/shared/components/components.dart';

class ExpertProfilePersonal extends StatelessWidget {

  var type = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
              if(type == 'expert') {
                Get.offAndToNamed(
                  '/consult',
                  arguments: 'expert',
                );
              }
              //Get.toNamed('/consult');
            }),*/
        title: Text(
          'Your Profile',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: defaultCircollerAvatar(
                      ImageProfileAssetsPath: 'assets/images/profile.png',
                      radius: 50.0,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Name:',
                    text: 'Aya Hammad',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Email:',
                    text: 'Aya@gmail.com',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Password:',
                    text: '**********',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Experience:',
                    text: '3 years of work in the field of pharmacy',
                    fieldHeight: 60.0
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Phone Number:',
                    text: '+2334567890',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Address:',
                    text: 'New York, America',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Worktime:',
                    text: 'Mon to Wed from 08:00 AM to 04:00 PM',
                    fieldHeight: 60.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Consultation provided:',
                    text: 'Medical',
                  ),
                  /*SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: defaultTextButton(
                      titleAdvice: 'reservayions',
                      widthButton: 200.0,
                      onPressTB: (){
                        *//*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Expert(),
                          ),
                        );*//*
                        Get.toNamed('/reservayions');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: defaultTextButton(
                      titleAdvice: 'Log out',
                      widthButton: 150.0,
                      onPressTB: (){
                        *//*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Expert(),
                          ),
                        );*//*
                        Get.offAndToNamed('/first');
                      },
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
