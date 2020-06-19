import 'package:flutter/material.dart';

class SnsSignUpButton extends StatelessWidget {
  final String text;
  final Widget leading;
  final void Function() onPressed;
  final Color color;
  SnsSignUpButton({this.text, this.leading, this.onPressed, this.color});

//  final

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 30,
      ),
      child: ButtonTheme(
        height: 50,
        buttonColor: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              leading,
              Text(
                text,
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              Opacity(opacity: 0, child: leading),
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
