import 'package:flutter/material.dart';

class IncDec extends StatefulWidget {
  @override
  State<IncDec> createState() => _IncDecState();
}

class _IncDecState extends State<IncDec> {
  int count = 1;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'IncDec'
        ),
      ),
      body: Center(
        //height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Dec',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  count--;
                  print(count);
                });
              },
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 80.0,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            MaterialButton(
              child: Text(
                'Inc',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  count++;
                  print(count);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}