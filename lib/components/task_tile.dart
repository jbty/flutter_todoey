import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function onLongPress;

  TaskTile(
      {@required this.isChecked,
      @required this.taskTitle,
      @required this.checkboxCallBack,
      @required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.deepPurpleAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
