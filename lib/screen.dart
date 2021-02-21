import 'package:flutter/material.dart';
import 'package:todolist/todo.dart';

import 'package:todolist/newTodo.dart';
import 'package:todolist/todoList.dart';

class Screen extends StatefulWidget {
  @override
  TodoListScreenState createState() => TodoListScreenState();
}

class TodoListScreenState extends State<Screen> {
  // List<Todo> todos = [
  //   Todo(title: 'Bài 1: Giới thiệu Flutter'),
  //   Todo(title: 'Bài 2: Cài đặt Flutter'),
  //   Todo(title: 'Bài 3: Tạo ứng dụng Flutter đầu tiên'),
  //   Todo(title: 'Bài 4: Kiến trúc ứng dụng Flutter'),
  //   Todo(title: '...'),
  // ];
  List<Todo> todos = [];

  toggleTodo(Todo todo, bool isChecked) {
    setState(() {
      todo.isDone = isChecked;
    });
  }

  addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );

    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: TodoList(
        todos: todos,
        onTodoToggle: toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: addTodo,
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   // return ListView.builder(
  //   // itemBuilder: buildItem,
  //   // itemCount: todos.length,
  //   // );
  //   return Scaffold(
  //     appBar: AppBar(title: Text('Todo List')),
  //     body: ListView.builder(
  //       itemBuilder: buildItem,
  //       itemCount: todos.length,
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       child: Icon(Icons.add),
  //       onPressed: addTodo,
  //     ),
  //   );
  // }
}