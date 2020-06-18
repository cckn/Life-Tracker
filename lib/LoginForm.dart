import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lifetracker/dice.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  void stringTrimmer(TextEditingController controller) {
    int offset = controller.selection.baseOffset;

    controller.text = controller.text.trim();
    controller.selection = TextSelection(
      baseOffset: offset - 1,
      extentOffset: offset - 1,
    );
  }

  void showSnackBar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  void showToast(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Theme(
        data: ThemeData(
          primaryColor: Colors.teal,
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.teal, fontSize: 15),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter "Dice"',
                ),
                keyboardType: TextInputType.emailAddress,
                controller: idController,
                onChanged: (string) {
                  if (string != string.trim()) {
                    setState(() {
                      stringTrimmer(idController);
                    });
                  }
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: pwController,
                onChanged: (string) {
                  if (string != string.trim()) {
                    setState(() {
                      stringTrimmer(pwController);
                    });
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
              ButtonTheme(
                child: RaisedButton(
                  onPressed: () {
                    String id = idController.text.trim();
                    String pw = pwController.text.trim();
                    String msg;
                    if (id != 'dice') {
                      msg = "Id is not correct";
                    } else if (pw != "1234") {
                      msg = "Password is not correct";
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dice(),
                        ),
                      );
                      return;
                    }
                    showToast(msg);
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                minWidth: 100,
                height: 50,
                buttonColor: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
