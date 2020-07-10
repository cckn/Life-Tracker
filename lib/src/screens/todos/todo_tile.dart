import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lifetracker/src/data/app_state.dart';
import 'package:lifetracker/src/models/record.dart';
import 'package:provider/provider.dart';

class TodoTile extends StatelessWidget {
  final Record record;

  TodoTile({this.record});

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of(context);

    void _buttonClickHandler() {
      appState.deleteRecord(record.id);
    }

    void _showSnackBar(String text) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(milliseconds: 500),
          backgroundColor: Colors.black26,
        ),
      );
    }

    return Dismissible(
      key: Key(UniqueKey().toString()),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          appState.moveRecordTo(MoveRecordTo.ToTodoList, record.id);
          _showSnackBar("Move to TodoList ${record.text}");
        } else if (direction == DismissDirection.endToStart) {
          appState.moveRecordTo(MoveRecordTo.ToLogList, record.id);
          _showSnackBar("Move to LogList ${record.text}");
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: <Widget>[
            SizedBox(
//            height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      intl.DateFormat('a hh:mm').format(record.time),
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: AutoSizeText(
                      record.text,
                      style: TextStyle(fontSize: 20.0),
                      maxLines: 2,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _buttonClickHandler();
                      },
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
