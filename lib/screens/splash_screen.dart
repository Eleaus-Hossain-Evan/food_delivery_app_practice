import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/home_screen/home_screen.dart';

import '../core/animations/animations.dart';
import '../core/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _next();
    super.initState();
  }

  _next() {
    Timer(
      const Duration(milliseconds: 450),
      () {
        Navigation.pushReplacement(
          context,
          customPageTransition: PageTransition(
            child: const HomeScreen(),
            type: PageTransitionType.fadeIn,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(),
    );
  }
}
