import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:starter_app/screens/onboardings/widget/onboarding_page.dart';
import 'package:starter_app/utils/constant/images.dart';
import 'package:starter_app/utils/constant/texts.dart';

import '../../helpers/device_helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           PageView(
             children: [
               OnBoardingPage(animation: MyImages.onboarding1Animation,title: MyText.onBoardingTitle1,subtitle: MyText.onBoardingSubTitle1,),
               OnBoardingPage(animation: MyImages.onboarding2Animation,title: MyText.onBoardingTitle2,subtitle: MyText.onBoardingSubTitle2,),
               OnBoardingPage(animation: MyImages.onboarding3Animation,title: MyText.onBoardingTitle3,subtitle: MyText.onBoardingSubTitle3,),


             ],
           ),
        ],
      ),
    );
  }
}


