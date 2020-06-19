import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lifetracker/Info.dart';

void main() => runApp(
      MyApp(
        info: fetchInfo(),
      ),
    );

Color mainColor = Colors.blue;

class MyApp extends StatelessWidget {
  final Future<Info> info;
  const MyApp({this.info});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Tracker",
      theme: ThemeData(
        primarySwatch: mainColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("계좌정보 확인"),
        ),
        body: Center(
          child: FutureBuilder<Info>(
              initialData:
                  new Info(id: 0, userName: "", balance: 0, account: 0),
              future: info,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return buildInfo(snapshot.data);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return buildInfo(snapshot.data);
              }),
        ),
      ),
    );
  }

  Widget buildInfo(Info info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("고객번호 : ${info.id}"),
        Text("고객명 : ${info.userName}"),
        Text("계좌 ID : ${info.account}"),
        Text("잔액 : ${info.balance}"),
      ],
    );
  }
}

Future<Info> fetchInfo() async {
  final response =
      await http.get("https://my.api.mockaroo.com/bank.json?key=fea24270");

  if (response.statusCode == 200) {
    return Info.fromJson(json.decode(response.body));
  } else {
    throw Exception("실패");
  }
}
//https://my.api.mockaroo.com/bank.json?key=fea24270
