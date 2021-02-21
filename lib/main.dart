import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todolist/screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todo List Demo',
      // home: Scaffold(
      //   appBar: AppBar(title: Text('Todo List')),
      //   body: TodoList(),
      //   floatingActionButton: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () {
      //
      //     },
      //   ),
      // ),
      home: Screen(),
    );
  }
}
