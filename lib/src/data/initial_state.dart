import 'package:lifetracker/src/models/record.dart';

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

var initialRecordList = <Record>[
  new Record("시간에 대한 기록은 왼쪽으로 스와이프 하세요", new DateTime.now()),
  new Record("할 일은 오른쪽으로 스와이프 하세요", new DateTime.now()),
  new Record(multilineText, new DateTime.now())
];
