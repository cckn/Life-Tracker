import 'package:flutter/material.dart';
import 'package:lifetracker/screens/ScreenA.dart';
import 'package:lifetracker/screens/ScreenB.dart';
import 'package:lifetracker/screens/ScreenC.dart';

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
      initialRoute: "/",
      routes: {
        "/": (_) => ScreenA(),
        "/b": (_) => ScreenB(),
        "/c": (_) => ScreenC(),
      },
    );
  }
}
