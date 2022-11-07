import 'package:course_implemintation_wrongspilling/models/users/users_model.dart';
import 'package:course_implemintation_wrongspilling/modules/users/UsersScreen.dart';
import 'package:flutter/material.dart';
class UsersScreen extends StatelessWidget {
  List<UsersModel> users=[
    UsersModel(
    id: 1,
    name: 'Ibraheem',
    number: '+9627852523'
  ),
    UsersModel(id: 2,
        name: 'ahmad',
        number: '2434545345'),
    UsersModel(
        id: 3,
        name: 'Ibraheem',
        number: '+9627852523'
    ),
    UsersModel(id: 4,
        name: 'ahmad',
        number: '2434545345'),
    UsersModel(
        id: 5,
        name: 'Ibraheem',
        number: '+9627852523'
    ),
    UsersModel(id: 6,
        name: 'ahmad',
        number: '2434545345'),
    UsersModel(
        id: 7,
        name: 'Ibraheem',
        number: '+9627852523'
    ),
    UsersModel(id: 8,
        name: 'ahmad',
        number: '2434545345'),
    UsersModel(
        id: 9,
        name: 'Ibraheem',
        number: '+9627852523'
    ),
    UsersModel(id:10 ,
        name: 'ahmad',
        number: '2434545345'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          highlightColor: Colors.cyan[100],
          hoverColor:Colors.cyan[100] ,
          onPressed: (){},
          icon:Icon(Icons.phone_android,
        size: 30,
        color: Colors.black,
        )),
        centerTitle:true,
        backgroundColor: Colors.cyan[200],
        title: Text(
          'Users list',
        ),
      ),
      body: Container(color: Colors.black,child: ListView.separated(
          itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
            height: 0.1,
            color: Colors.grey[300],
            width: double.infinity,
          ),
          itemCount: users.length)),
    );
  }
Widget buildUserItem(UsersModel user)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(

    children: [

      CircleAvatar(
        backgroundColor: Colors.cyan[200],
        radius: 25.0,
        child: Text(user.id.toString(),
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,


          ),),

      ),
      SizedBox(width: 20.0,),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(user.name,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.cyan


            ),),
          Text(user.number,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,



            ),),
        ],
      ),
    ],
  ),
);

}

