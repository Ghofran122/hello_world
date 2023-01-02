import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert.dart';
import 'package:hello_world/shared/components/components.dart';

class ExpertProfile extends StatelessWidget {
  const ExpertProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        leading: IconButton(
            color: Colors.grey[100],
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigoAccent,
            ),
            onPressed: (){
              /*Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Expert(),
                  ));*/
              Get.toNamed('/expert');
            }),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultTextField(
              discribtionText: 'Name:',
              text: 'Aya Hammad',
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultTextField(
                discribtionText: 'Experience:',
                text: '3 years of work in the field of pharmacy',
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
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultTextField(
              discribtionText: 'Consultation provided:',
              text: 'Medical',
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
