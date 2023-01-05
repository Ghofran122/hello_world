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
        child: SingleChildScrollView(
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
                fieldHeight: 60.0,
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 20.0,
                    bottom: 6.0
                ),
                child: Text(
                  'Experience:',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Material(
                color: Colors.white,
                elevation: 10.0,
                borderRadius: BorderRadiusDirectional.circular(30.0),
                shadowColor: Colors.grey[100],
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    //border: BoxBorder(BorderSide.none),
                  ),
                  height: 60.0,
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.only(
                    start: 20.0,
                    end: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 years of work in the field of pharmacy',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
                fieldHeight: 60.0
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
      ),
    );
  }
}
