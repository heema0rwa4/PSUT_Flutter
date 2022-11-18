import 'package:course_implemintation_wrongspilling/Shared/Components/components.dart';
import 'package:course_implemintation_wrongspilling/modules/archived_tasks/archived_screen.dart';
import 'package:course_implemintation_wrongspilling/modules/done_tasks/done_task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

import '../Shared/Components/constants.dart';
import '../modules/new_tasks/new_task_screen.dart';

class HomeScreenLayout extends StatefulWidget {
  @override
  State<HomeScreenLayout> createState() => _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends State<HomeScreenLayout> {
  int currentIndex = 0;
  List<Widget> currentScreen = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen()
  ];
  List<String> titles = ['New Tasks', 'Done Tasks', 'Archived'];
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.brown,
  ];



  late Database database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            titles[currentIndex],
            style: TextStyle(color: colors[currentIndex]),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //  {
          /// error handling with try and catch
          // try {
          //   var name = await getName();
          //   print(name);
          //     throw(' this line');
          // }catch(error){
          //   print('The error is at${error.toString()}');
          // }
          /// error handling with .then
          // getName().then((value) {
          //   print('strintfksf');
          //   print(value);
          //   throw('rrrrrrrrrrrrrr');
          // }).catchError((error){
          //   print('${error.toString()}');
          // });
          //}
          if (isBottomSheetShown) {
            if (formKey.currentState!.validate()) {
              insertIntoDatabase(
                title: titleController.text,
                time: timeController.text,
                date: dateController.text,
              ).then((value) {
                Navigator.pop(context);
                isBottomSheetShown = false;
                setState(() {
                  fabIcon = Icons.edit;
                });
              });
            }
          } else {
            scaffoldKey.currentState
                ?.showBottomSheet(
                  (context) => Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            defaultFormField(
                                controller: titleController,
                                type: TextInputType.text,
                                validate: (value) {
                                  if (value!.isEmpty) {
                                    return 'please insert a title';
                                  }
                                  return null;
                                },
                                label: 'Title',
                                prefix: Icons.title),
                            SizedBox(
                              height: 5,
                            ),
                            defaultFormField(
                                controller: timeController,
                                // isClickable: false,
                                type: TextInputType.datetime,
                                onTap: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((value) {
                                    timeController.text =
                                        value!.format(context);
                                  });
                                },
                                validate: (value) {
                                  if (value!.isEmpty) {
                                    return 'time can not be empty';
                                  }
                                },
                                label: 'Time',
                                prefix: Icons.watch_later_rounded),
                            SizedBox(
                              height: 5,
                            ),
                            defaultFormField(
                                controller: dateController,
                                type: TextInputType.datetime,
                                // isClickable: false,
                                onTap: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate:
                                              DateTime.parse('2050-12-30'))
                                      .then((value) {
                                    dateController.text =
                                        DateFormat.yMMMd().format(value!);
                                  });
                                },
                                validate: (value) {
                                  if (value!.isEmpty) {
                                    return 'a date has to be assigned';
                                  }
                                },
                                label: 'date',
                                prefix: Icons.calendar_month)
                          ],
                        ),
                      ),
                    ),
                  ),
                  elevation: 20.0,
                  backgroundColor: Colors.indigo[200],
                )
                .closed
                .then((value) {
              isBottomSheetShown = false;
              setState(() {
                fabIcon = Icons.edit;
              });
            });
            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
        },
        child: Icon(fabIcon),
      ),
      body: currentScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (Index) {
          setState(() {
            currentIndex = Index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.task,
                color: Colors.white,
              ),
              label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done_outline,
                color: Colors.white,
              ),
              label: 'Done'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive,
                color: Colors.white,
              ),
              label: 'Archived'),
        ],
      ),
    );
  }

  // Future<String> getName() async {
  //   return 'name';
  // }

  Future<void> createDatabase() async {
    database = await openDatabase('database-toDo.db', version: 1,

        onCreate: (database, version) async {
      await database.execute(
          'CREATE TABLE new_tasksT(id INTEGER PRIMARY KEY,title TEXT ,date TEXT,time TEXT,status TEXT)');
    }, onOpen: (database) {
          getDataFromDB(database).then((value) {
  new_tasksT =value;
  print(new_tasksT);

          }).catchError((error){


          });
          print('IM opENNNNNNNNNNNNNN');

    },

    );


  }

  Future insertIntoDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
    return await database.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO new_tasksT(title,date,time,status) VALUES("$title","$date","$time","NEW")');

      // int id2 = await txn.rawInsert('INSERT INTO new_tasksT(title,date,time,status) VALUES(second task,12/4,02:00,task isn\'t in progress)');
      //print('inserted 2 $id2');
      // int id3 = await txn.rawInsert(
      //     'INSERT INTO new_tasksT(title,date,time,status) VALUES("first tak","3/4","1200","tak in progress")');
      // print('inserted su:$id3');
    }).then((value) {
      print('items inserted');
    }).catchError((error){
      print('error at ${error.toString()}');
    });
  }

  Future<List<Map>> getDataFromDB(database) async {
    return await database.rawQuery('SELECT * FROM new_tasksT');

  }
  void updateDatabase() {}

  Future<void> deleteDatabase(database) async {

  }
}
