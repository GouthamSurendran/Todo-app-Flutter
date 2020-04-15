import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  bool isChecked = true;

  void checkboxState(bool isCheck) {
    setState(() {
      isChecked = isCheck;
    });
  }

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: checkboxState,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox(
      {@required this.checkboxState, @required this.toggleCheckboxState});

  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent.shade200,
        value: checkboxState,
        onChanged: toggleCheckboxState);
  }
}
