import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/info_add_screen/info_add.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/signup_controller.dart';
import 'package:hello_world/shared/components/components.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var type = Get.arguments[0];

  var lang = Get.arguments[1];

  var emailController = TextEditingController();

  var nameController = TextEditingController();

  var passwordController = TextEditingController();

  var cPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool expert = true;

  Icon suufIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );

  bool isPasswordShow = true;

  Icon cSuffIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );

  bool cIsPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome!'.tr,
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Creat your account now'.tr,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                  ),

                  SizedBox(
                    height: 45.0,
                  ),
                  defaultTextFormField(
                    pIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.name,
                    textLable: 'Name'.tr,
                    controllerText: nameController,
                    validat: (String value) {
                      if(value.isEmpty){
                        return 'Name can not be empty';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextFormField(
                    pIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.emailAddress,
                    textLable: 'Email'.tr,
                    controllerText: emailController,
                    validat: (String value) {
                      if(value.isEmpty){
                        return 'email can not be empty';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextFormField(
                    pIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.visiblePassword,
                    textLable: 'Password'.tr,
                    controllerText: passwordController,
                    sIcon: suufIconShow,
                    isPass: isPasswordShow,
                    onPressPass: (){
                      setState(() {
                        isPasswordShow = !isPasswordShow;
                        if(isPasswordShow == true){
                          suufIconShow = Icon(
                            Icons.visibility_outlined,
                            color: Colors.grey[600],
                          );
                        }
                        else{
                          suufIconShow = Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey[600],
                          );
                        }
                      });
                    },
                    validat: (value) {
                      if(value.isEmpty){
                        return 'password is too short';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextFormField(
                    pIcon: Icon(
                      Icons.lock_reset_outlined,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.visiblePassword,
                    textLable: 'Confirm Password'.tr,
                    controllerText: cPasswordController,
                    sIcon: cSuffIconShow,
                    isPass: cIsPasswordShow,
                    onPressPass: (){
                      setState(() {
                        cIsPasswordShow = !cIsPasswordShow;
                        if(cIsPasswordShow == true){
                          cSuffIconShow = Icon(
                            Icons.visibility_outlined,
                            color: Colors.grey[600],
                          );
                        }
                        else{
                          cSuffIconShow = Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey[600],
                          );
                        }
                      });
                    },
                    validat: (value) {
                      if(value.isEmpty || cPasswordController != passwordController){
                        return 'password is not the same';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Sign Up'.tr,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      defaultMaterialButton(
                          colorMaterialButton: Colors.indigoAccent,
                          icon: Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                          ),
                          borderSideButton: BorderSide.none,
                          onPresse: (){
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddInformation(),
                              ),
                              //(route) => false,
                            );*/
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
                                    '/addInformation',
                                    arguments: ['expert', 'en']
                                );
                              }
                              else if(lang == 'ar'){
                                Get.offAndToNamed(
                                    '/addInformation',
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
                                  '/addInformation',
                                  arguments: 'expert'
                              );
                            }*/
                            //Get.toNamed('/addInformation');
                          }
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?'.tr,
                      ),
                      TextButton(
                        onPressed: (){
                          /*Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                                (route) => false,
                          );*/
                          if(type == 'user') {
                            if(lang == 'en'){
                              Get.offAndToNamed(
                                  '/signin',
                                  arguments: ['user', 'en']
                              );
                            }
                            else if(lang == 'ar'){
                              Get.offAndToNamed(
                                  '/signin',
                                  arguments: ['user', 'ar']
                              );
                            }
                          }
                          else if(type == 'expert') {
                            if(lang == 'en'){
                              Get.offAndToNamed(
                                  '/signin',
                                  arguments: ['expert', 'en']
                              );
                            }
                            else if(lang == 'ar'){
                              Get.offAndToNamed(
                                  '/signin',
                                  arguments: ['expert', 'ar']
                              );
                            }
                          }
                          /*if(type == 'user') {
                            Get.offAndToNamed(
                                '/signin',
                                arguments: 'user'
                            );
                          }
                          else if(type == 'expert') {
                            Get.offAndToNamed(
                                '/signin',
                                arguments: 'expert'
                            );
                          }*/
                          //Get.offAndToNamed('/signin');
                        },
                        child: Text(
                          'Sign in'.tr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
