import 'package:course_implemintation_wrongspilling/Shared/Components/components.dart';
import 'package:course_implemintation_wrongspilling/Shared/Components/constants.dart';
import 'package:flutter/material.dart';

class NewTasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.separated
      (itemBuilder: (context, index)=> buildTaskItem(new_tasksT[index]),
      separatorBuilder: (context, index)=> Container(
        width:  double.infinity,
        height: 1.0,
        color: Colors.grey[200],
      ),
      itemCount: new_tasksT.length,);


  }
}
