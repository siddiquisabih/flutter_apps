import 'package:flutter/material.dart';
import './material_buttons.dart';
import './input_fields.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              hintText: 'Enter your password',
              onChange: (value) {},
            ),
            SizedBox(
              height: 8.0,
            ),
            InputField(
              hintText: 'Enter your password',
              onChange: (value) {},
              isSecureText: true,
            ),
            SizedBox(
              height: 24.0,
            ),
            AppButton(
              title: 'Register',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
