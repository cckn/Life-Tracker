import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lifetracker/screens/LogIn.dart';

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
      home: LogIn(),
    );
  }
}
