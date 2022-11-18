import 'package:course_implemintation_wrongspilling/modules/counter/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

class CounterScreen extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    // CounterCubit cubit = CounterCubit.get(context);
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context,state){},
        builder:(context,state){
          return  Scaffold(
            appBar: AppBar(
              title: Text('مسبحة رقمية'),
              centerTitle: true,
              backgroundColor: Colors.green,
              shadowColor: Colors.lightGreenAccent,),
            body: Center(
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: double.minPositive,vertical: double.minPositive),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {

                              if (CounterCubit.get(context).counter>0){
                                CounterCubit.get(context).minus();}
                              else{CounterCubit.get(context).Reset();}
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
                          '${ CounterCubit.get(context).counter}',
                          style: TextStyle(fontSize: 40.0),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        TextButton(

                          onPressed: () {

                            CounterCubit.get(context).plus();

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
                        TextButton(onPressed: (){

                          CounterCubit.get(context).Reset();
                        }
                            ,child: Text(
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
            ),
          );
        },


      ),
    );
  }
}

