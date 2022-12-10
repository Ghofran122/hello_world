import 'package:flutter/material.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/signin_screen/signin.dart';
import 'package:hello_world/shared/components/components.dart';

class SingUp extends StatefulWidget {
  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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

  String? type;

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
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Creat your account now',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign up as',
                          style: TextStyle(
                            fontSize: 25.0
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(20.0),
                                color: expert ? Colors.indigoAccent : Colors.grey[600],
                              ),
                              child: GestureDetector(
                                onTap: () {

                                  setState(() {
                                    expert = true;
                                    type = 'Expert';
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Expert',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                                'or',
                              style: TextStyle(
                                fontSize: 20.0
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  expert = false;
                                  type = 'User';
                                });
                              },
                              child: Container(
                                width: 100.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.circular(20.0),
                                  color: expert ? Colors.grey[600] : Colors.indigoAccent,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    /*Icon(
                                      Icons.female,
                                      color: Colors.white,
                                      size: 80.0,
                                    ),*/
                                    Text(
                                      'User',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
                    textLable: 'Name',
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
                    textLable: 'Email',
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
                    textLable: 'Password',
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
                    textLable: 'Confirm Password',
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
                        'Sign Up',
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
                            print(nameController.text);
                            print(emailController.text);
                            print(passwordController.text);
                            print(cPasswordController.text);
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2  +0.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                                (route) => false,
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent,
                          ),
                        ),
                      ),
                      defaultMaterialButton(
                          colorMaterialButton: Colors.indigoAccent,
                          icon: Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                          ),
                          borderSideButton: BorderSide.none,
                          onPresse: (){
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Consult(),
                              ),
                                  (route) => false,
                            );
                          }
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
