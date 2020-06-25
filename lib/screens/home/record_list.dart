import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lifetracker/data/app_state.dart';
import 'package:lifetracker/screens/home/record_tile.dart';
import 'package:provider/provider.dart';

class RecordList extends StatelessWidget {
  final ScrollController scrollController;

  RecordList({this.scrollController});

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    var _recordList = appState.getRecordList();
    return ListView(
      reverse: true,
      dragStartBehavior: DragStartBehavior.start,
      controller: scrollController,
      children: _recordList.map((record) {
        return RecordTile(
          record: record,
        );
      }).toList(),
    );
  }
}
