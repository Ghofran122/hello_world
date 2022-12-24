import 'package:flutter/material.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert.dart';

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
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Expert(),
                  ));
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
              height: 45.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
