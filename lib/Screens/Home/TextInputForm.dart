import 'package:flutter/material.dart';

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
