import 'package:course_implemintation_wrongspilling/modules/users/UsersScreen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        backgroundColor: Colors.black87,
        title: Row(
          children: [
            CircleAvatar(
              radius: 23.0,
              backgroundImage: NetworkImage(
                  'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fdreamicus.com%2Fdata%2Fface%2Fface-04.jpg&f=1&nofb=1&ipt=4fe35b2dbdc1bb4bb4d6f7d2d5803ce90ae3ba34788796f1ce95a1dd45e5f60b&ipo=images'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20.0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  color: Colors.black87,
                  Icons.camera_alt,
                  size: 23.0,
                ),
              )),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20.0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  color: Colors.black87,
                  Icons.edit,
                  size: 23.0,
                ),
              )),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 3, start: 4, end: 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 3, left: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UsersScreen()));
                        },
                        child:
                       Text( 'search',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  height: 115.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStatusItem(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: 15,
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.0,
                  ),
                  itemCount: 35,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStatusItem() => Container(
        padding: EdgeInsetsDirectional.all(3),
        width: 60.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.AwGBn0RaiFXEpXemdj-2LQHaLG%26pid%3DApi&f=1&ipt=fce9bbf1a9266fc71c809df335c24dc8efebc519ba2e52ff29f4f16407a4008a&ipo=images'),
                ),
                CircleAvatar(
                  radius: 7.6,
                  backgroundColor: Colors.black87,
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                'Ibraheem Khleel Rwashdeh',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );

  Widget buildChatItem() => Padding(
        padding: const EdgeInsetsDirectional.only(start: 8, end: 2, top: 5),
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.AwGBn0RaiFXEpXemdj-2LQHaLG%26pid%3DApi&f=1&ipt=fce9bbf1a9266fc71c809df335c24dc8efebc519ba2e52ff29f4f16407a4008a&ipo=images'),
                ),
                CircleAvatar(
                  radius: 8.6,
                  backgroundColor: Colors.black87,
                ),
                CircleAvatar(
                  radius: 7.7,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Ibraheem Rwashdeh',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'this is a demo for a message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                        '2:00 am',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
}
