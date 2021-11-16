import 'package:flutter/material.dart';
import './material_buttons.dart';
import './input_fields.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logoImage',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            InputField(
              hintText: 'Enter your email',
              onChange: (value) {},
            ),
            SizedBox(
              height: 8.0,
            ),
            InputField(
              hintText: 'Enter your password',
              isSecureText: true,
              onChange: (value) {},
            ),
            const SizedBox(
              height: 24.0,
            ),
            AppButton(
              title: 'Login',
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
