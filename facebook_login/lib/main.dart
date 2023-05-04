import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FacebookLoginApp());
}

class FacebookLoginApp extends StatefulWidget {
  const FacebookLoginApp({super.key});

  @override
  State<FacebookLoginApp> createState() => _FacebookLoginAppState();
}

class _FacebookLoginAppState extends State<FacebookLoginApp> {
  bool isLoggedIn = false;
  String username = '';
  String userEmail = '';

  void _loginFacebook() async {
    Future<LoginResult> loginResult =
        FacebookAuth.instance.login(permissions: ['email', 'public_profile']);
    var value = await loginResult;
    if (value.status == LoginStatus.success) {
      final userInfo = await FacebookAuth.instance.getUserData();
      setState(() {
        username = userInfo["name"];
        userEmail = userInfo["email"];
        isLoggedIn = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Container(
          alignment: AlignmentDirectional.center,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey)),
            child: !isLoggedIn
                ? InkWell(
                    onTap: _loginFacebook,
                    child: const Text(
                      "Facebook Login",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : Column(
                    children: [
                      Text(username),
                      Text(userEmail),
                    ],
                  ),
          ),
        )),
      ),
    );
  }
}
