

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/providers/task_provider.dart';
import 'package:flutter_todo_app/screens/add_task_screen.dart';
import 'package:flutter_todo_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => HomeScreen(),
          '/add-task': (ctx) => AddTaskScreen()
        },
      ),
      );
  }
}