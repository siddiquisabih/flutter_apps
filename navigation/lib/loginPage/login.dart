import 'package:flutter/material.dart';
import 'package:navigation/routeAnimation.dart';
import 'package:navigation/signupPage/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginUI();
  }
}

class LoginUI extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationControler;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    _iconAnimationControler = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));

    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationControler, curve: Curves.bounceOut);

    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationControler.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              Form(
                  child: Theme(
                data: ThemeData(
                    brightness: Brightness.dark,
                    primaryColor: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 20.0))),
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Enter Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Enter Password',
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      MaterialButton(
                        height: 40.0,
                        // minWidth: 60.0,
                        onPressed: () => {},
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: Text('Login'),
                        splashColor: Colors.greenAccent,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      MaterialButton(
                        height: 40.0,
                        // minWidth: 60.0,
                        onPressed: () =>
                            // Navigator.of(context).pushNamed('/signup'),
                            Navigator.push(context, SlideRightRoute(page : SignupPage())),
                        color: Colors.transparent,
                        textColor: Colors.teal,
                        child: Text("Don't have an account? Signup"),
                        splashColor: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ))
            ],
          )
        ],
      ),
      // backgroundColor: Colors.black38,
    );
  }
}
