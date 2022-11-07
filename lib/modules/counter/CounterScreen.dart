import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('مسبحة رقمية'),centerTitle: true,backgroundColor: Colors.green,shadowColor: Colors.lightGreenAccent,),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        if (counter>0){
                   counter--;}
                        else{counter=0;}
                      });
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 60.0,
                          color: Colors.black),
                    )),
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  '${counter}',
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(
                  width: 40.0,
                ),
                TextButton(

                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 60.0,
                          color: Colors.black),
                    ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                TextButton(onPressed: (){ setState(() {
                  counter=0;
                });}, child: Text(
          'ٳعادة',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40.0,
              color: Colors.black),
        )),
    ],
    )
    ],
    ),
    ),
    );
  }
}
