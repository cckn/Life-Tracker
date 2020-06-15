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

const appBarColor = Color(0xffFEA002);
const backgroundColor = Color(0xffFF9002);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("BBANTO ID CARD"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/sample.png'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "BBANTO",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "BBANTO POWER LEVEL",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "14",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Using lightsaber",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Face hero tattoo",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fire flames",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/sample.png'),
                    radius: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
