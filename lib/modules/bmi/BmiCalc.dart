import 'dart:math';

import 'package:course_implemintation_wrongspilling/modules/bmi/BmiResult.dart';
import 'package:flutter/material.dart';

class BmiMain extends StatefulWidget {


  @override
  State<BmiMain> createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  bool isMale= true;
  double height = 150.0;
  int weight = 35;
  int  age = 15;
   double result =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.deepPurpleAccent[400],
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text('BMI calculator',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[300],

        ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,

              children: [
              Expanded(
              child:
                GestureDetector(
                  onTap: (){
setState(() {
isMale =true ;
});
                  } ,
                  child: Container(

                    decoration: BoxDecoration(
                      //image: DecorationImage(image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ga4Cmyr6u9sUT0e8aRqkyAHaHa%26pid%3DApi&f=1&ipt=3041093256a39d6a9710225a7128d34b21a2e5baa47a992f4074d13bb3b00cf9&ipo=images')),
                      borderRadius: BorderRadius.circular(15.0),

                      color:isMale ? Colors.indigo[400]:Colors.indigo,
                      // boxShadow:BoxShadow(color: Colors.indigoAccent,blurRadius:15.0 ,blurStyle:BlurStyle.normal ,offset:Offset.infinite
                      //
                      // ),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                   Image(
                     image: AssetImage('ImagesAndAssets/Images/maleFlutter.png'),
                     height: 50.0,
                     width: 50.0,
                   ),
                        Text('Male',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,

                        ),
                        ),

                      ],
                    ),
                  ),
                ), ),
                SizedBox(width: 15.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
setState(() {
  isMale= false;
});
                    } ,
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: isMale ? Colors.indigo:Colors.indigo[400],

                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('ImagesAndAssets/Images/femaleFlutter.png'),
                            height: 55.0,
                            width: 55.0,
                          ),
                          Text('Female',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,

                            ),
                            ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
              ),
            ),
          ),
          Expanded(
            child:
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 18),
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.indigo,
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Height',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 30.0


                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children: [
                       Text('${height.round()}',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 50.0,

                         ),
                       ),
                       SizedBox(width: 5,),
                       Text('CM',

                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 15.0,


                         ),
                       ),
                     ],
                   ),
                   Slider(
                       value: height,
                       max: 250.0,
                       min: 70.0
                       , onChanged: (value){
setState(() {
height = value;
});
                   },
                   )

                 ],
               ),
             ),
           ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(child:
                  Container(
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ga4Cmyr6u9sUT0e8aRqkyAHaHa%26pid%3DApi&f=1&ipt=3041093256a39d6a9710225a7128d34b21a2e5baa47a992f4074d13bb3b00cf9&ipo=images')),
                      borderRadius: BorderRadius.circular(15.0),

                      color: Colors.indigo,
                      // boxShadow:BoxShadow(color: Colors.indigoAccent,blurRadius:15.0 ,blurStyle:BlurStyle.normal ,offset:Offset.infinite
                      //
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('AGE',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('${age}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                             setState(() {
                               age--;
                             });
                            },
                            mini: true,
                              child: Icon(Icons.remove),
                                ),
                            SizedBox(width: 25,),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            } ,
                            mini: true,
                            child: Icon(Icons.add),)
                          ],
                        ),
                      ],

                    ),
                  ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(child:
                  Container(
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ga4Cmyr6u9sUT0e8aRqkyAHaHa%26pid%3DApi&f=1&ipt=3041093256a39d6a9710225a7128d34b21a2e5baa47a992f4074d13bb3b00cf9&ipo=images')),
                      borderRadius: BorderRadius.circular(15.0),

                      color: Colors.indigo,
                      // boxShadow:BoxShadow(color: Colors.indigoAccent,blurRadius:15.0 ,blurStyle:BlurStyle.normal ,offset:Offset.infinite
                      //
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        Text('${weight}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,

                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(width: 25,),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            } ,
                              mini: true,
                              child: Icon(Icons.add),)
                          ],
                        ),
                      ],

                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(onPressed: (){
               result = weight / pow(height/100,2);
             Navigator.push(context,
             MaterialPageRoute(
               builder: (context)=> BmiResult(age: age,isMale: isMale,result: result,),
             ),
             );
            },
            child: Text(
              'Calculate',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),

            ),),
          )

        ],
      ),

    );
  }
}
