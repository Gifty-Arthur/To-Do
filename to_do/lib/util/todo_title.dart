import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDo(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(24),
        child: Container(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                //task name
                Checkbox(value: taskCompleted, onChanged: onChanged),
                Text(taskName),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
            )));
  }
}
