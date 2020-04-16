import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/model/task_data.dart';
import 'package:todoflutter/model/task.dart';

class AddTaskScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    String newTaskName;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                    color: Colors.lightBlueAccent.shade200, fontSize: 30.0),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                ),
              ),
              onChanged: (value) {
                newTaskName = value;
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 50.0,
              child: FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addItem(newTaskName);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                color: Colors.lightBlueAccent.shade200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
