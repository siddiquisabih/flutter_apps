import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GoogleLoginApp());
}

class GoogleLoginApp extends StatefulWidget {
  const GoogleLoginApp({super.key});

  @override
  State<GoogleLoginApp> createState() => _GoogleLoginAppState();
}

class _GoogleLoginAppState extends State<GoogleLoginApp> {
  bool isLoggedIn = false;
  String username = '';
  String userEmail = '';

  void _gooleLoginUser() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(credential);
    Map<String, dynamic>? profile = user.additionalUserInfo!.profile;

    var name = profile?["name"];
    var image = profile?["picture"];
    var email = profile?["email"];

    setState(() {
      username = name;
      userEmail = email;
      isLoggedIn=true;
    });
// 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
    print(profile!["name"]);
    print(profile);
    print("user.additionalUserInfo!.username");
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
                    onTap: _gooleLoginUser,
                    child: const Text(
                      "Google Login",
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
