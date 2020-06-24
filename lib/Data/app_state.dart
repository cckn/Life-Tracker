import 'package:flutter/material.dart';
import 'package:lifetracker/Data/initial_state.dart';
import 'package:lifetracker/Models/Record.dart';

class AppState with ChangeNotifier {
  AppState();

//  List<Record> _recordList = [];
  List<Record> _recordList = initialRecordList;

  void setRecordList(List<Record> newRecordList) {
    _recordList = newRecordList;
    notifyListeners();
  }

  void addRecord(String text) {
    _recordList.add(new Record(text, DateTime.now()));
    notifyListeners();
  }

  void deleteRecord(String id) {
    _recordList.removeWhere((record) => record.id == id);
    notifyListeners();
  }

  List<Record> get getRecordList => _recordList;
}
