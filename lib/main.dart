import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Tracker",
      theme: ThemeData(
        primarySwatch: Colors.red,
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
      body: Builder(builder: (BuildContext context) {
        return Center(
          child: FlatButton(
            color: Colors.red,
            child: Text(
              "Show me",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Hello SnackBar'),
//                duration: Duration(milliseconds: 20),
              ));
            },
          ),
        );
      }),
    );
  }
}
