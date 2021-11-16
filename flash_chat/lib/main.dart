import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/routes/routeKey.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
