void main() {
  showData();
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info = "요청수행 시작";
  print(info);
}

Future<String> accessData() async {
  String account;

  await Future.delayed(Duration(seconds: 3), () {
    account = "8500만원";
    print(account);
  });

  return account;
}

void fetchData(String account) {
  String info = "잔액은 $account입니다.";
  print(info);
}
