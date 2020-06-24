import 'package:flutter/material.dart';
import 'package:lifetracker/Data/dummy.dart';
import 'package:lifetracker/Screens/Home/Home.dart';
import 'package:provider/provider.dart';
import 'Models/Record.dart';

Color mainColor = Colors.blue;

void main() => runApp(
      Provider<List<Record>>.value(
        value: dummy,
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Tracker",
      theme: ThemeData.dark(),
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
