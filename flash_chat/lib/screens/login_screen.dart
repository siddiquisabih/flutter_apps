import 'package:flash_chat/routes/routeKey.dart';
import 'package:flutter/material.dart';
import './material_buttons.dart';
import './input_fields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  final _auth = FirebaseAuth.instance;
  bool loading = false;

  void loginUser() async {
    setState(() {
      loading = true;
    });
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushNamed(context, RouteKey.chatScreen);
      setState(() {
        loading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: loading,
        opacity: 0.5,
        progressIndicator: const CircularProgressIndicator(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                hintText: 'Enter your email',
                onChange: (value) {
                  email = value;
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              InputField(
                hintText: 'Enter your password',
                isSecureText: true,
                onChange: (value) {
                  password = value;
                },
              ),
              const SizedBox(
                height: 24.0,
              ),
              AppButton(
                title: 'Login',
                color: Colors.lightBlueAccent,
                buttonEvent: loginUser,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
