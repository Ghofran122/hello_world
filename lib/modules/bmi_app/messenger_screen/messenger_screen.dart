import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        //toolbarHeight: 70.0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
                  ),
                  maxRadius: 20.0,
                ),
                CircleAvatar(
                  maxRadius: 7.6,
                  backgroundColor: Colors.redAccent,
                ),
              ],
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: Icon(
              Icons.camera_alt,
              size: 20.0,
              color: Colors.black45,
            ),
            radius: 15.0,
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 15.0,
            ),
            child: CircleAvatar(
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.black45,
              ),
              maxRadius: 15.0,
              backgroundColor: Colors.grey[300],
            ),
          ),
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                  color: Colors.grey[300],
                ),
                child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          size: 18.0,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 99.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, item) => buildStoryItem(),
                  separatorBuilder: (context,  item) => SizedBox(
                    width: 10.0,
                  ),
                  itemCount: 9,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.0,
                  ),
                  itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Row(
    children: [
      Container(
        width: 60.0,
        child:
        Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
                  ),
                  maxRadius: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 4.0,
                      right: 4.7
                  ),
                  child: CircleAvatar(
                    maxRadius: 6.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Ghofran Tala Alabbas',
              style: TextStyle(
                fontSize: 13.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),

    ],
  );

  Widget buildChatItem() => Column(
    children: [
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
                ),
                maxRadius: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 4.0,
                    right: 4.7
                ),
                child: CircleAvatar(
                  maxRadius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ghofran AlAbbas',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Hello everybody I\'m Ghofran how are you brooo?',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      CircleAvatar(
                        maxRadius: 2.0,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                          '8:00 AM'
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );

}