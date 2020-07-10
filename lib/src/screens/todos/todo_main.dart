import 'package:flutter/material.dart';
import 'package:lifetracker/src/data/app_state.dart';
import 'package:lifetracker/src/models/record.dart';
import 'package:lifetracker/src/screens/todos/todo_list.dart';
import 'package:provider/provider.dart';

class TodoMain extends StatefulWidget {
  @override
  _TodoMainState createState() => _TodoMainState();
}

class _TodoMainState extends State<TodoMain> {
  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    List<Record> todos = appState.getTodoList();
    return TodoList(
      records: todos,
    );
  }
}
