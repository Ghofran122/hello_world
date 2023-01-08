import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/models/signin.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/info_add_screen/info_add.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_controller.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin_service.dart';
import 'package:hello_world/modules/estishara_app/signup_screen/sing_up.dart';
import 'package:hello_world/shared/components/components.dart';

class SignIn extends StatefulWidget {

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  SignInController controller = Get.find();

  var type = Get.arguments[0];

  var lang = Get.arguments[1];

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Icon suufIconShow = Icon(
    Icons.visibility_outlined,
    color: Colors.grey[600],
  );

  SigninService signin_service_obj = SigninService();

  bool isPasswordShow = true;

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
                    'Welcome Back!'.tr,
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Sign in to your account now'.tr,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 90.0,
                  ),
                  defaultTextFormField(
                    pIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.emailAddress,
                    textLable: 'Email'.tr,
                    controllerText: emailController,
                    onChang: (value) => controller.email = value,
                    validat: (String value) {
                      if(value.isEmpty){
                        return 'email can not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30.0,
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
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 130.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Sign in'.tr,
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
                          if(formKey.currentState!.validate()){
                            SigninModels sign_in_model_obj = SigninModels(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString(),
                            );
                            // print(sign_in_model_obj.email);
                            signin_service_obj.signin(sign_in_model_obj);
                            /*print(controller.email);
                            print(passwordController.text);*/
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Consult(),
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
                          }
                        }
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account yet?'.tr,
                      ),
                      TextButton(
                        onPressed: (){
                          /*Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp(),
                            ),
                            (route) => false,
                          );*/
                          if(type == 'user') {
                            if(lang == 'en'){
                              Get.offAndToNamed(
                                  '/signup',
                                  arguments: ['user', 'en']
                              );
                            }
                            else if(lang == 'ar'){
                              Get.offAndToNamed(
                                  '/signup',
                                  arguments: ['user', 'ar']
                              );
                            }
                          }
                          else if(type == 'expert') {
                            if(lang == 'en'){
                              Get.offAndToNamed(
                                  '/signup',
                                  arguments: ['expert', 'en']
                              );
                            }
                            else if(lang == 'ar'){
                              Get.offAndToNamed(
                                  '/signup',
                                  arguments: ['expert', 'ar']
                              );
                            }
                          }
                          /*if(type == 'user') {
                            Get.offAndToNamed(
                                '/signup',
                                arguments: 'user'
                            );
                          }
                          else if(type == 'expert') {
                            Get.offAndToNamed(
                                '/signup',
                                arguments: 'expert'
                            );
                          }*/
                        },
                        child: Text(
                          'Sign up'.tr,
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
