import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/routes/routeKey.dart';
import 'package:flutter/material.dart';
import './material_buttons.dart';
import './input_fields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;
  bool loading = false;

  void registerUser() async {
    setState(() {
      loading = true;
    });
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      setState(() {
        loading = false;
      });
      Navigator.pushNamed(context, RouteKey.chatScreen);
    } catch (e) {
      setState(() {
        loading = false;
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: loading,
        opacity: 0.5,
        progressIndicator: CircularProgressIndicator(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logoImage',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
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
      ),
    );
  }
}
