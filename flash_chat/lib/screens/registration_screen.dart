import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/routes/routeKey.dart';
import 'package:flutter/material.dart';
import './material_buttons.dart';
import './input_fields.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;

  void registerUser() async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (newUser != null) {
        Navigator.pushNamed(context, RouteKey.chatScreen);
      }
    } catch (e) {
      print(e);
    }
  }

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
            const SizedBox(
              height: 48.0,
            ),
            InputField(
              keyboardType: TextInputType.emailAddress,
              hintText: 'Enter your password',
              onChange: (value) {
                email = value;
              },
            ),
            const SizedBox(
              height: 8.0,
            ),
            InputField(
              hintText: 'Enter your password',
              onChange: (value) {
                password = value;
              },
              isSecureText: true,
            ),
            const SizedBox(
              height: 24.0,
            ),
            AppButton(
              title: 'Register',
              color: Colors.blueAccent,
              buttonEvent: registerUser,
            ),
          ],
        ),
      ),
    );
  }
}
