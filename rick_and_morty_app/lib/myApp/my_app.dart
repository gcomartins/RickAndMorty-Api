import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/myApp/pages/onBoarding/onboarding_controller.dart';
import 'package:rick_and_morty_app/myApp/pages/onBoarding/onboarding_page.dart';
import 'package:rick_and_morty_app/myApp/rm_utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => RmResponsive(child: child),
      home: OnBoardingPage(
        controller: OnBoardingController(
          animationDuration: 25,
          leftPosition: 0,
        ),
      ),
    );
  }
}
