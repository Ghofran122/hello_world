import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/models/expert/expert_model.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/expert_profile_screen/expert_profile.dart';
import 'package:hello_world/modules/estishara_app/expert_screen/expert_controller.dart';
import 'package:hello_world/shared/components/components.dart';

class Expert extends StatelessWidget {

  var searchController = TextEditingController();

  List<ExpertModel> users = [
    ExpertModel(
      nameM: 'Ala\'a',
      experiancM: 'Medical advice',
    ),
    ExpertModel(
      nameM: 'Aya',
      experiancM: 'Psychological advice',
    ),
    ExpertModel(
      nameM: 'Ali',
      experiancM: 'Economic advice',
    ),
    ExpertModel(
      nameM: 'Ahmad',
      experiancM: 'Medical advice',
    ),
    ExpertModel(
      nameM: 'Eman',
      experiancM: 'Medical advice',
    ),
    ExpertModel(
      nameM: 'Saleh',
      experiancM: 'Medical advice',
    ),
    ExpertModel(
      nameM: 'Malek',
      experiancM: 'Medical advice',
    ),
  ];

  String? expName ='Ahmed yosouf';

  /*Icon profileImageUrl = Icon(
    Icons.person,
    size: 45.0,
    color: Colors.white,
  );*/

  String? experianc ='3 years in pharmasite';

  var type = Get.arguments[0];

  var lang = Get.arguments[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    builder: (context) => Consult(),
                  ));*/
            if(type == 'user') {
              if(lang == 'en'){
                Get.offAndToNamed(
                    '/homeLayoutUser',
                    arguments: ['user', 'en']
                );
              }
              else if(lang == 'ar'){
                Get.offAndToNamed(
                    '/homeLayoutUser',
                    arguments: ['user', 'ar']
                );
              }
            }
            else if(type == 'expert') {
              if(lang == 'en'){
                Get.offAndToNamed(
                    '/homeLayoutExpert',
                    arguments: ['expert', 'en']
                );
              }
              else if(lang == 'ar'){
                Get.offAndToNamed(
                    '/homeLayoutExpert',
                    arguments: ['expert', 'ar']
                );
              }
            }
            /*if(type == 'user') {
              Get.offAndToNamed(
                  '/homeLayoutUser',
                  arguments: 'user'
              );
            }
            else if(type == 'expert') {
              Get.offAndToNamed(
                  '/homeLayoutExpert',
                  arguments: 'expert'
              );
            }*/
            //Get.toNamed('/homeLayoutExpert');
            }),
        title: Text(
          'Expert'.tr,
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
          top: 25.0,
          //bottom: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              defaultTextFormField(
                boxWidth: 400.0,
                boxHeight: 35.0,
                boxColor: Colors.white24,
                textLable: 'Search'.tr,
                pIcon: Icon(
                  Icons.search,
                  size: 18.0,
                  color: Colors.black45,
                ),
                textInputType: TextInputType.text,
                controllerText: searchController,
                validat: (String value){
                  if(value.isEmpty){
                    print('Search should not be empty');
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsetsDirectional.zero),
                  overlayColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExpertProfile(),
                    ),
                  );
                  if(type == 'user') {
                    if(lang == 'en'){
                      Get.offAndToNamed(
                          '/expertProfile',
                          arguments: ['user', 'en']
                      );
                    }
                    else if(lang == 'ar'){
                      Get.offAndToNamed(
                          '/expertProfile',
                          arguments: ['user', 'ar']
                      );
                    }
                  }
                  else if(type == 'expert') {
                    if(lang == 'en'){
                      Get.offAndToNamed(
                          '/expertProfile',
                          arguments: ['expert', 'en']
                      );
                    }
                    else if(lang == 'ar'){
                      Get.offAndToNamed(
                          '/expertProfile',
                          arguments: ['expert', 'ar']
                      );
                    }
                  }
                  /*if(type == 'user') {
                    Get.offAndToNamed(
                        '/expertProfile',
                        arguments: 'user'
                    );
                  }
                  else if(type == 'expert') {
                    Get.offAndToNamed(
                        '/expertProfile',
                        arguments: 'expert'
                    );
                  }*/
                  //Get.toNamed('/expertProfile');
                },
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => expertItem(users[index]),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: users.length,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget expertItem(ExpertModel users) => defaultExpertItem(
    name: users.nameM,
    experianc: users.experiancM.tr,
    //profileImage: profileImageUrl,
    imageProfile: 'assets/images/profile.png',
  );
}