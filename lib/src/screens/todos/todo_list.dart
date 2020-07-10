import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lifetracker/src/models/record.dart';
import 'package:lifetracker/src/screens/todos/todo_tile.dart';

class TodoList extends StatelessWidget {
  final List<Record> records;
  final ScrollController scrollController;

  TodoList({this.records, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: false,
      dragStartBehavior: DragStartBehavior.start,
      controller: scrollController,
      children: records.map((record) {
        return TodoTile(
          record: record,
        );
      }).toList(),
    );
  }
}
