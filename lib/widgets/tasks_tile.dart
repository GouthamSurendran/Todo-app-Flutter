import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callback;
  final Function longpressCallback;

  TaskTile(
      {this.isChecked, this.taskTitle, this.callback, this.longpressCallback});

  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent.shade200,
          value: isChecked,
          onChanged: callback),
    );
  }
}
