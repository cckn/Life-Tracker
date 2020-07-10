import 'package:flutter/material.dart';
import 'package:lifetracker/src/models/record.dart';
import 'initial_state.dart';

enum MoveRecordTo { ToTodoList, ToLogList }

class AppState with ChangeNotifier {
  AppState();

  List<Record> _recordList = initialRecordList;
  List<Record> _todoList = [];
  List<Record> _logList = [];

  void setRecordList(List<Record> newRecordList) {
    _recordList = newRecordList;
    notifyListeners();
  }

  void addRecord(String text, {DateTime time}) {
    if (time == null) {
      time = DateTime.now();
    }
    _recordList.insert(0, new Record(text, time));
    notifyListeners();
  }

  void deleteRecord(String id) {
    _recordList.removeWhere((record) => record.id == id);
    notifyListeners();
  }

  void modifyRecord(String originId, Record newRecord) {
    deleteRecord(originId);
    addRecord(newRecord.text, time: newRecord.time);
    notifyListeners();
  }

  List<Record> getRecordList() {
    _recordList.sort((a, b) => -(a.time.compareTo(b.time)));
    return _recordList;
  }

  List<Record> getTodoList() {
    return _todoList;
  }

  List<Record> getLogList() {
    return _logList;
  }

  void moveRecordTo(MoveRecordTo to, String recordId) {
    Record record = _recordList.firstWhere((element) => element.id == recordId);
    deleteRecord(recordId);
    if (to == MoveRecordTo.ToTodoList) {
      _todoList.add(record);
    } else if (to == MoveRecordTo.ToLogList) {
      _logList.add(record);
    } else {
      print("Wtf");
    }
  }
}
