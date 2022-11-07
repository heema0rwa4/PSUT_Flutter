import 'package:course_implemintation_wrongspilling/modules/bmi/BmiCalc.dart';
import 'package:course_implemintation_wrongspilling/modules/chat/ChatScreen.dart';
import 'package:course_implemintation_wrongspilling/modules/login/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
            ),
          ),
          title: Text(
            'Home',
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }
              ,
            ),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiMain()));
              },
                icon: Icon(Icons.notification_important)),
          ],
          backgroundColor: Colors.teal,
          elevation: 20.0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 30.0,
          ),
        ),
        body: Container(
          color: Colors.purple,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(


                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("THIS IS A ROW",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.blue,
                      ),
                    ),
                    
                  ],
                ),
              ),

              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.orange,
                margin: EdgeInsets.zero,
                child: Text(
                  'I\'m Here ',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                    wordSpacing: 1,
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              // Container(
              //   color: Colors.grey,
              //   child: Text('things ',
              //     style: TextStyle(
              //       backgroundColor: Colors.red,
              //       fontSize: 30.0,
              //
              //     ),
              //   ),
              // ),
              // Container(
              //   color: Colors.blue,
              //   child: Text('things ',
              //     style: TextStyle(
              //       backgroundColor: Colors.amber,
              //       fontSize: 30.0,
              //
              //     ),
              //   ),
              // ),
              // Container(
              //   color: Colors.amber,
              //   child: Text('things ',
              //     style: TextStyle(
              //       backgroundColor: Colors.black,
              //       fontSize: 30.0,
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
