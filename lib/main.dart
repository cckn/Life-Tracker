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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Icon Menu"),
        elevation: 0,
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Scaffold.of(context).removeCurrentSnackBar();
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "SnackBar",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: mainColor,
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: Text(
          "Show me",
          style: TextStyle(color: Colors.white),
        ),
        color: mainColor,
      ),
    );
  }
}
