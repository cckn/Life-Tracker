import 'package:flutter/material.dart';
import 'package:lifetracker/src/data/app_state.dart';
import 'package:lifetracker/src/models/record.dart';
import 'package:lifetracker/src/screens/home/record_list.dart';
import 'package:lifetracker/src/screens/home/text_input_form.dart';
import 'package:provider/provider.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    List<Record> _recordList = appState.getRecordList();

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: _recordList.length != 0
                ? RecordList(
                    records: appState.getRecordList(),
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
      ),
    );
  }
}
