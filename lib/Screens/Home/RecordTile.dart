import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lifetracker/Models/Record.dart';

class RecordTile extends StatelessWidget {
  final Record record;

  RecordTile({this.record});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: <Widget>[
          Row(
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
                child: Text(
                  record.text,
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    print("Icon Button");
                  },
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
//
//Widget recordTile(Record record) {
//  return Padding(
//    padding: const EdgeInsets.only(left: 10),
//    child: Column(
//      children: <Widget>[
//        Row(
//          children: <Widget>[
//            Expanded(
//              flex: 1,
//              child: Text(
//                dateFormat.format(record.time),
//                style: TextStyle(fontSize: 10, color: Colors.grey),
//              ),
//            ),
//            Expanded(
//              flex: 8,
//              child: Text(
//                record.text,
//                textAlign: TextAlign.left,
//              ),
//            ),
//            Expanded(
//              flex: 1,
//              child: IconButton(
//                icon: Icon(Icons.menu),
//                onPressed: () {
//                  print("Icon Button");
//                },
//              ),
//            )
//          ],
//        ),
//        Divider(
//          color: Colors.grey,
//        ),
//      ],
//    ),
//  );
//}
