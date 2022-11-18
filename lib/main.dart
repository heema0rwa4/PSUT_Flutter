import 'package:course_implemintation_wrongspilling/modules/bmi/BmiCalc.dart';
import 'package:course_implemintation_wrongspilling/modules/bmi/BmiResult.dart';
import 'package:course_implemintation_wrongspilling/modules/chat/ChatScreen.dart';
import 'package:course_implemintation_wrongspilling/modules/counter/CounterScreen.dart';
import 'package:course_implemintation_wrongspilling/modules/bmi/IMAGE.dart';
import 'package:course_implemintation_wrongspilling/modules/login/LoginScreen.dart';
import 'package:course_implemintation_wrongspilling/modules/users/UsersScreen.dart';
import 'package:course_implemintation_wrongspilling/modules/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'layout/home_layout.dart';

void main() {
  runApp( MyApp());
}


// Widget currentPage = CounterScreen();

int index =0;
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CounterScreen(),

    );
  }
}
