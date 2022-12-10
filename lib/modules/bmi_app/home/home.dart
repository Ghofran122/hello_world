import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
  //xd
  //umldigram

      /*appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
          onPressed: (){
            print(
              "Account"
            );
          },
          icon: Icon(
              Icons.account_circle
          ),
          color: Colors.black54,
        ),
        title: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.black54,
            fontStyle: FontStyle.italic,
            wordSpacing: 2.0,
            letterSpacing: 4,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              print("Setting");
          }, 
            icon: Icon(Icons.settings,color: Colors.black54
              ,)
          ,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 200.0,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(20.0),
                      topStart: Radius.circular(20.0),
                      bottomEnd: Radius.circular(20.0),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  textDirection: TextDirection.ltr,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Image(image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
                    ),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.fitHeight,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(
                        top: 20,
                        bottom: 20,
                        start: 20,
                        end: 20,
                      ),
                      //width: double.infinity,
                      color: Colors.black.withOpacity(.5),
                      child: Text('Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )*/
        
      /*SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.black87,
          child: Container(
            //height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    "I'm Row Hello End!",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )*/

      /*Container(
        color: Colors.black87,
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Hello ^-^",
                  style: TextStyle(
                    fontSize: 22,

                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        )
      ),*/
    );
  }

}