import 'package:flutter/material.dart';
import 'package:lifetracker/components/SocialLoginButton.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In"),
      ),
      body: _buildButtons(),
    );
  }

  Widget _buildButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SnsSignUpButton(
          color: Colors.white,
          text: "Login with Google",
          leading: Image.asset(
            "images/icons8-google-48.png",
            height: 35,
          ),
          onPressed: () {
            print("google");
          },
        ),
        SnsSignUpButton(
          color: Colors.white,
          text: "Login with Facebook",
          leading: Image.asset(
            "images/icons8-facebook-circled-48.png",
            height: 35,
          ),
          onPressed: () {
            print("Facebook");
          },
        ),
        SnsSignUpButton(
          color: Colors.white,
          text: "Login with Email",
          leading: Image.asset(
            "images/icons8-email-48.png",
            height: 35,
          ),
          onPressed: () {
            print("Email");
          },
        ),
        SnsSignUpButton(
          color: Colors.white,
          text: "Login with Apple",
          leading: Image.asset(
            "images/icons8-apple-logo-48.png",
            height: 35,
          ),
          onPressed: () {
            print("Apple");
          },
        ),
      ],
    );
  }
}
