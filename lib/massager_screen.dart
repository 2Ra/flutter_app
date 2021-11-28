import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MassagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        titleSpacing: 16,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREZBoO-EduXrawQFE_DH8PInF1S1gDWtDOXg&usqp=CAU'),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[200],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.black87,
                  )),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[200],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black87,
                  )),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildStoryItem();
                  },
                  // ignore: prefer_const_constructors
                  separatorBuilder: (context, index) => SizedBox(
                    width: 12,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=> SizedBox(height: 12,),
                  itemCount: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() {
    return Row(
      children: [
        Container(
          width: 45,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1567177662154-dfeb4c93b6ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y3JlYXRpdml0eXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                    ),
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                    ),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              Text(
                'Roqaih Ramy',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget buildChatItem() {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1567177662154-dfeb4c93b6ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y3JlYXRpdml0eXxlbnwwfHwwfHw%3D&w=1000&q=80'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 3,
              ),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 3,
              ),
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Roqaih Ramy Moussa Diab',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit aenean amet consectetur.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
          ),
          child: Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Text(
          '3P.M',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
