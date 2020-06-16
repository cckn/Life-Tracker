import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Color mainColor = Colors.blue;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Tracker",
      theme: ThemeData(
        primarySwatch: mainColor,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.red,
          child: SafeArea(
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 10,
              ),
              padding: EdgeInsets.all(50),
              child: Text("data"),
            ),
          ),
        ),
      ),
    );
  }
}
