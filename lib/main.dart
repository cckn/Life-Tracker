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
        body: SafeArea(
          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text("Container 1"),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
                child: Text("Container 2"),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Text("Container 3"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
