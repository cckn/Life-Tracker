import 'package:flutter/material.dart';
import 'package:lifetracker/src/data/app_state.dart';
import 'package:lifetracker/src/screens/home/home_main.dart';
import 'package:lifetracker/src/screens/log/log_main.dart';
import 'package:lifetracker/src/screens/todos/todo_main.dart';
import 'package:provider/provider.dart';

Color mainColor = Colors.blue;

void main() => runApp(
//    MyApp()
      ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Tracker",
      theme: ThemeData.dark(),
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
//            title: const Text("Life Tracker"),
            title: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.assignment),
                ),
                Tab(
                  icon: Icon(Icons.inbox),
                ),
                Tab(
                  icon: Icon(Icons.check_circle),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LogMain(),
              HomeMain(),
              TodoMain(),
            ],
          ),
        ),
      ),
    );
  }
}
