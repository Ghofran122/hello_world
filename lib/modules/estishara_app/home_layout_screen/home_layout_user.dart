import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/modules/estishara_app/consult_screen/consult.dart';
import 'package:hello_world/modules/estishara_app/profile_screen/user_profile_personal.dart';
import 'package:hello_world/modules/estishara_app/setting_screen/setting.dart';

class HomeLayoutUser extends StatefulWidget {
  const HomeLayoutUser({Key? key}) : super(key: key);

  @override
  State<HomeLayoutUser> createState() => _HomeLayoutUserState();
}

class _HomeLayoutUserState extends State<HomeLayoutUser> {

  var type = Get.arguments;

  int currentIndex = 0;

  List<Widget> screens = [
    Consult(),
    UserProfilePersonal(),
    Setting()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_outlined,
            ),
            label: 'Consult',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
