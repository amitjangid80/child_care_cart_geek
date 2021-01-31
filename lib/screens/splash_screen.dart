// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/routes/routes.dart';
import 'package:ui_sample/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // calling navigate to login screen method
    _navigateToLoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image(width: 120, height: 120, image: AssetImage(kLogoIcon))));
  }

  _navigateToLoginScreen() async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.pushNamedAndRemoveUntil(context, loginRoute, (route) => false);
  }
}
