import 'package:flutter/material.dart';
import 'package:lifetracker/data/app_state.dart';
import 'package:lifetracker/screens/home/home.dart';
import 'package:provider/provider.dart';

Color mainColor = Colors.blue;

void main() => runApp(
//    MyApp()
      ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
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
