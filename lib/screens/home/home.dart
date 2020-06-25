import 'package:flutter/material.dart';
import 'package:lifetracker/data/app_state.dart';
import 'package:lifetracker/screens/home/record_list.dart';
import 'package:lifetracker/screens/home/text_input_form.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();

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
              ? RecordList(
                  scrollController: scrollController,
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
