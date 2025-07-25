import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:starter_app/utils/constant/images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           PageView(
             children: [
               Lottie.asset(MyImages.onboarding1Animation),
               Lottie.asset(MyImages.onboarding2Animation),
               Lottie.asset(MyImages.onboarding3Animation),

             ],
           ),
        ],
      ),
    );
  }
}
