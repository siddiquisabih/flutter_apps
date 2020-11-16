import 'package:flutter/material.dart';

import 'main.dart';
import 'secondScreen.dart';

// var routerNavigation = <String, WidgetBuilder>{
//   "/": (context) => MyHome(),
//   "secondPage": (context) => SecondPage(),
// };


var routerNavigation = (RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context)=> MyHome());
        break;
      case '/secondPage':
        return MaterialPageRoute(builder: (context)=> SecondPage());
        break;
    }
  };
