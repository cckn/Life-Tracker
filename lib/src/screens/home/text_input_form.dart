import 'package:flutter/material.dart';
import 'package:lifetracker/src/data/app_state.dart';
import 'package:provider/provider.dart';

class TextInputForm extends StatefulWidget {
  final ScrollController scrollController;
  TextInputForm({this.scrollController});
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
    AppState appState = Provider.of(context);

    void _onSubmit() {
      String text = _textController.text;
      if (text.trim().length != 0) {
        widget.scrollController.animateTo(
          widget.scrollController.initialScrollOffset,
          duration: Duration(seconds: 1),
          curve: Curves.elasticOut,
        );
        appState.addRecord(_textController.text);
        _textController.text = "";
      }
    }

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
              _onSubmit();
            },
            child: Text("추가"),
          )
        ],
      ),
    );
  }
}
