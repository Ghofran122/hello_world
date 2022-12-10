import 'package:flutter/material.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert.dart';

class Consult extends StatelessWidget {
  Image profileImage = Image(
    image: ExactAssetImage(AutofillHints.photo),
  );

  String? expName='Ahmed yosouf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 2.0,
        shadowColor: Colors.black,
        title: Text(
          'Consult',
          style: TextStyle(
            fontSize: 27.0,
            //fontStyle: FontStyle.italic,
            //letterSpacing: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Expert(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 5.0,
                  end: 8.0,
                  bottom: 10.0,
                  top: 10.0,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 60.0,
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 30.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              top: 4.0,
                              bottom: 4.0,
                              start: 8.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    expName!,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsetsDirectional.only(
                                      top: 10.0,
                                    ),
                                    child: Text(
                                      '3 years in pharmasite',
                                      style: TextStyle(
                                        color: Colors.black,
                                        //fontSize: 20.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
