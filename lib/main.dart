import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/View/onboarding.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: OnboardingScreen(),
    );
  }
}
