import 'package:flutter/material.dart';
import 'package:lifetracker/Data/Record.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const String shortString = "Text";
const String longString =
    "긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 ";
const String multilineText = """여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
""";

class _HomeState extends State<Home> {
  final _records = <Record>[
    new Record(shortString, new DateTime.now()),
    new Record(longString, new DateTime.now()),
    new Record(multilineText, new DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: _records.map((record) {
              return _buildRecordWidget(record);
            }).toList(),
          ),
        ),
        TextInputForm(),
      ],
    );
  }
}

Widget _buildRecordWidget(Record record) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                "${record.time.hour}:${record.time.minute}",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                record.text,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
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

class TextInputForm extends StatefulWidget {
  @override
  _TextInputFormState createState() => _TextInputFormState();
}

class _TextInputFormState extends State<TextInputForm> {
  var _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textController,
            ),
          ),
          RaisedButton(
            onPressed: () {
              print("추가");
            },
            child: Text("추가"),
          )
        ],
      ),
    );
  }
}
