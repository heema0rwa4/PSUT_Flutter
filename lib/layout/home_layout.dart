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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('To-Do App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: currentScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.task),
            label: 'Tasks'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_outline),
            label: 'Done'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: 'Archived'
          ),
        ],
      ),
    );
  }
}
