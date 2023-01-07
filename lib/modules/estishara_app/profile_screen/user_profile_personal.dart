import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/shared/components/components.dart';

class UserProfilePersonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        title: Text(
          'Profile'.tr,
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
                    discribtionText: 'Name:'.tr,
                    text: 'Aya Hammad',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Email:'.tr,
                    text: 'Aya@gmail.com',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextField(
                    discribtionText: 'Password:'.tr,
                    text: '**********',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
