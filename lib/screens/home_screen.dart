import 'package:flutter_todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/providers/task_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskProvider>(context).tasks;

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (ctx, index) {
          final task = tasks[index];
          return TaskTile(
            title: task.title,
            isDone: task.isDone,
            onChanged: <bool>(value) {
              return value;
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed('/add-task');
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
