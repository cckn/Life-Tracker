import 'package:flutter/material.dart';
import 'package:lifetracker/Screens/Home.dart';

void main() => runApp(
      MyApp(),
    );

Color mainColor = Colors.blue;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Tracker",
      theme: ThemeData(primarySwatch: mainColor),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Life Tracker"),
        ),
        body: Home(),
      ),
    );
  }
}
