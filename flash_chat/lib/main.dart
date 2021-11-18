import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/routes/routeKey.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FlashChat());

}

class FlashChat extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),

          
        ),
      ),

      // home: WelcomeScreen(),
      initialRoute: RouteKey.welcomeScreen,
      routes: {
        RouteKey.welcomeScreen: (context) => WelcomeScreen(),
        RouteKey.loginScreen: (context) => LoginScreen(),
        RouteKey.registrationScreen: (context) => RegistrationScreen(),
        RouteKey.chatScreen: (context) => ChatScreen(),
      },
    );
  }
}
