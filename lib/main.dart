import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/core/theme/app_theme.dart';
import 'package:food_delivery_app_practice/screens/splash_screen.dart';

import 'core/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfiguration(
      builder: (context) {
        return MaterialApp(
          title: 'Anim Delivery',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          home: const SplashScreen(),
        );
      },
    );
  }
}
