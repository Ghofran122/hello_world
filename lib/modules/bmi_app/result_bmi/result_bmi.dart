import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool isMale;
  final int age;
  final int result;
   Result({
     required this.isMale,
     required this.age,
     required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Text(
          'Result',
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.grey[500],
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.grey[500],
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
