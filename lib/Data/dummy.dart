import 'package:lifetracker/Data/Record.dart';

String shortString = "Text";
String longString =
    "긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 긴 텍스트 ";
String multilineText = """여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
여러줄 텍스트
요런건?

이런건??
여러줄 텍스트
""";

var dummy = <Record>[
  new Record(shortString, new DateTime.now()),
  new Record(longString, new DateTime.now()),
  new Record(multilineText, new DateTime.now())
];
