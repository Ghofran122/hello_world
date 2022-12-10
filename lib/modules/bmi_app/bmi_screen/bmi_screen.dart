import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_world/modules/bmi_app/result_bmi/result_bmi.dart';

class BMIScreen extends StatefulWidget {
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 30, age = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20.0),
                        color: isMale ? Colors.pinkAccent : Colors.grey[900],
                      ),
                      child: GestureDetector(
                        onTap: () {

                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 80.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20.0),
                          color: isMale ? Colors.grey[900] : Colors.pinkAccent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 80.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadiusDirectional.circular(
                      20.0
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'HIGHT',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80.0,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value){
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      },
                      thumbColor: Colors.pink,
                      inactiveColor: Colors.grey,
                      activeColor: Colors.pink,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadiusDirectional.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 80.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if(weight>30){
                                        weight--;
                                        print(weight);
                                      }
                                    });
                                  },
                                  heroTag: 'weight-',
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.grey[800],
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                      print(weight);
                                    });
                                  },
                                  heroTag: 'weight+',
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.grey[800],
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadiusDirectional.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 80.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if(age>1) {
                                        age--;
                                        print(age);
                                      }
                                    });
                                  },
                                  heroTag: 'age-',
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.grey[800],
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                      print(age);
                                    });
                                  },
                                  heroTag: 'age+',
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.grey[800],
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          MaterialButton(
            onPressed: (){
              double result = weight / pow(height / 100, 2);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                      isMale: isMale,
                      age: age,
                      result: result.round(),
                  )
                ,)
              );
            },
            color: Colors.pink,
            minWidth: double.infinity,
            height: 70.0,
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0
              ),
            ),
          ),
        ],
      ),
    );
  }
}
