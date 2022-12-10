import 'package:flutter/material.dart';
import 'package:hello_world/models/user/user_model.dart';

class ModelClass extends StatelessWidget {
  List<DataModle> users = [
    DataModle(
      name: 'Ala\'a',
      study: 'Pharmacist',
    ),
    DataModle(
      name: 'Aya',
      study: 'Nurse',
    ),
    DataModle(
      name: 'Ali',
      study: 'Dermatologist',
    ),
    DataModle(
      name: 'Ahmad',
      study: 'Pediatrician',
    ),
    DataModle(
      name: 'Eman',
      study: 'Pharmacist',
    ),
    DataModle(
      name: 'Saleh',
      study: 'Nurse',
    ),
    DataModle(
      name: 'Malek',
      study: 'Dermatologist',
    ),
    DataModle(
      name: 'Ala\'a',
      study: 'Pharmacist',
    ),
    DataModle(
      name: 'Aya',
      study: 'Nurse',
    ),
    DataModle(
      name: 'Ali',
      study: 'Dermatologist',
    ),
    DataModle(
      name: 'Ahmad',
      study: 'Pediatrician',
    ),
    DataModle(
      name: 'Eman',
      study: 'Pharmacist',
    ),
    DataModle(
      name: 'Saleh',
      study: 'Nurse',
    ),
    DataModle(
      name: 'Malek',
      study: 'Dermatologist',
    ),
    DataModle(
      name: 'Ali',
      study: 'Dermatologist',
    ),
    DataModle(
      name: 'Ahmad',
      study: 'Pediatrician',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          'Title'
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => chatsItem(users[index]),
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: users.length,
      ),
    );
  }

  Widget chatsItem(DataModle users) => Column(
    children: [
      Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 15.0,
          bottom: 15.0,
          start: 10.0,
          end: 15.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 30.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 20.0,
                      top: 6.0,
                    ),
                    child: Text(
                      users.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 20.0,
                      top: 5.0,
                    ),
                    child: Text(
                      users.study,
                      style: TextStyle(
                        fontSize: 15.0,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        height: 1.5,
        color: Colors.black45,
      ),
    ],
  );
}