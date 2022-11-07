import 'package:flutter/material.dart';
import 'package:course_implemintation_wrongspilling/modules/bmi/BmiCalc.dart';

class BmiResult extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age ;


  BmiResult(
  {
    required this.result,
    required this.isMale,
    required this.age,
}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sex : ${isMale? 'Male':'Female'}',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),

            Text(
              'BMI : ${result.round()}',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),

            Text(
              'Age : $age',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context)=>BmiMain()));
            }, child: Text("Go Back",
            style: TextStyle(fontSize:40 ,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
