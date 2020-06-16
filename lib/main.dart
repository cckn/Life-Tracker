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
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print("shopping cart button is clicked");
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search button is clicked");
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("data"),
              accountEmail: Text("cckn.dev@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/sample-user1.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/sample-user (2).jpg"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/sample-user (3).jpg"),
                ),
              ],
              onDetailsPressed: () {
                print("onDetail Button Pcressed");
              },
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text("data"),
              trailing: Icon(Icons.add),
              onTap: () {
                print("Home Button Tapped!");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text("Setting"),
              trailing: Icon(Icons.add),
              onTap: () {
                print("Setting Button Tapped!");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text("QnA"),
              trailing: Icon(Icons.add),
              onTap: () {
                print("QnA Button Tapped!");
              },
            )
          ],
        ),
      ),
    );
  }
}
