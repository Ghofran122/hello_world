import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Icon(Icons.add),
      bottomNavigationBar: Icon(Icons.add_call),
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          icon:Icon(
              Icons.icecream
          ) ,
        onPressed: (){
            print("hello");
        },),
        title: Text(

          style: TextStyle(
              color: Colors.black12,
          ),
          selectionColor: Colors.blue,
          "Hello Page"
        ),
        actions: [
          Icon(
            Icons.menu
          ),
          Icon(
            Icons.ac_unit
          )
        ],
      ),
    );
  }

}