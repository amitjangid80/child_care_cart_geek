// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/routes/routes.dart';
import 'package:ui_sample/screens/screens.dart';

class CustomRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
