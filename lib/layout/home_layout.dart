import 'package:course_implemintation_wrongspilling/modules/archived_tasks/archived_screen.dart';
import 'package:course_implemintation_wrongspilling/modules/done_tasks/done_task.dart';
import 'package:flutter/material.dart';

import '../modules/new_tasks/new_task_screen.dart';

class HomeScreenLayout extends StatefulWidget {
  @override
  State<HomeScreenLayout> createState() => _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends State<HomeScreenLayout> {
  int currentIndex =0;
  List<Widget> currentScreen =[
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen()
  ];
  List<String>titles =[
    'New Tasks',
    'Done Tasks',
    'Archived'
  ];
  List<Color> colors =[
    Colors.red,
    Colors.green,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(titles[currentIndex],
        style: TextStyle(
          color: colors[currentIndex]
        ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          /// error handling with try and catch
          // try {
          //   var name = await getName();
          //   print(name);
          //     throw(' this line');
          // }catch(error){
          //   print('The error is at${error.toString()}');
          //
          // }
          /// error handling with .then
          // getName().then((value) {
          //
          //   print('strintfksf');
          //   print(value);
          //   throw('rrrrrrrrrrrrrr');
          // }).catchError((error){
          //   print('${error.toString()}');
          // });
        },
        child: Icon(Icons.add),
      ),
      body: currentScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (Index) {

        setState(() {
          currentIndex =Index;
        });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.task,color: Colors.white,),
            label: 'Tasks'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_outline,color: Colors.white,),
            label: 'Done'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive,color: Colors.white,),
            label: 'Archived'
          ),
        ],
      ),
    );

  }
 Future <String> getName() async
 {
 return 'name';
  }
}
