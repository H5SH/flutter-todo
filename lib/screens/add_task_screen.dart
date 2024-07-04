import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task.dart';
import 'package:flutter_todo_app/providers/task_provider.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  final TextEditingController _taskController = TextEditingController();

  void _addTask(BuildContext context){
    final taskText = _taskController.text;
    if(taskText.isNotEmpty){
      Provider.of<TaskProvider>(context, listen: false).addTask(
        Task(
          id: DateTime.now().toString(), 
        title: taskText, 
        isDone: false
        ),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _taskController,
              decoration: InputDecoration(labelText: 'Task'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: ()=> _addTask(context), child: Text('Add Task')),
          ]
          ),
        ) 
    );
  }
}