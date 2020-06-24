import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lifetracker/Data/app_state.dart';
import 'package:lifetracker/Screens/Home/RecordTile.dart';
import 'package:lifetracker/Screens/Home/TextInputForm.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    var _recordList = appState.getRecordList;

    return Column(
      children: <Widget>[
        Expanded(
          child: _recordList.length != 0
              ? ListView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: scrollController,
                  children: _recordList
                      .map((record) {
                        return RecordTile(record: record);
                      })
                      .toList()
                      .reversed
                      .toList(),
                )
              : Center(
                  child: Text("데이터가 없어요"),
                ),
        ),
        TextInputForm(
          scrollController: scrollController,
        ),
      ],
    );
  }
}
