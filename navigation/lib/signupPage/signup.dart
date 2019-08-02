import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginUI();
  }
}

class LoginUI extends State<SignupPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),

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
                size: 100,
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
                          labelText: 'Enter Username',
                        ),
                        keyboardType: TextInputType.text,
                      ),
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
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Confirm Password',
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
                        child: Text('Signup'),
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
