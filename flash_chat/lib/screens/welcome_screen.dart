import 'package:flash_chat/routes/routeKey.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import './material_buttons.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: const Duration(
        seconds: 1,
      ),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void goToLoginScreen() {
    Navigator.pushNamed(context, RouteKey.loginScreen);
  }

  void goToRegisterScreen() {
    Navigator.pushNamed(context, RouteKey.registrationScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logoImage',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText('Flash Chat',
                        textStyle: const TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                        ),
                        cursor: '_',
                        speed: Duration(milliseconds: 200)),
                  ],
                ),

                // const Text(
                //   'Flash Chat',
                // style: TextStyle(
                //   fontSize: 45.0,
                //   fontWeight: FontWeight.w900,
                // ),
                // ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            AppButton(
              title: 'Login',
              color: Colors.lightBlueAccent,
              buttonEvent: goToLoginScreen,
            ),
            AppButton(
                title: 'Register',
                color: Colors.blueAccent,
                buttonEvent: goToRegisterScreen),
          ],
        ),
      ),
    );
  }
}
