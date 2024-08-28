import 'package:flutter/material.dart';
import 'package:to_do/util/todo_title.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //list of to do task

  List toDoList = [
    ['Make tutorial', false],
    ['Make tutorial', false],
  ];
  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        centerTitle: true, // This centers the title in the AppBar
        backgroundColor: Colors.yellow[400],
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDo(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
