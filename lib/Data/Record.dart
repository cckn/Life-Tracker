class Record {
  bool isDone = false;
  String text = "";
  String comment = "";
  DateTime time; // 설정안하면 createdTime과 동일
  DateTime createdAt;
  //Audio
  //Photo

  Record(this.text, this.createdAt) {
    this.time = this.createdAt;
  }
}