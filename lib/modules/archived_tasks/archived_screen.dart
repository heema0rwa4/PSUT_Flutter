import 'package:flutter/material.dart';

class ArchivedTasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Archived Task',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    );
  }
}
