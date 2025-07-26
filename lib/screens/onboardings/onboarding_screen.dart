import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starter_app/helpers/device_helper.dart';
import 'package:starter_app/screens/onboardings/widget/onboarding_page.dart';
import 'package:starter_app/utils/constant/images.dart';
import 'package:starter_app/utils/constant/texts.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //pageView
           PageView(
             children: [
               OnBoardingPage(animation: MyImages.onboarding1Animation,title: MyText.onBoardingTitle1,subtitle: MyText.onBoardingSubTitle1,),
               OnBoardingPage(animation: MyImages.onboarding2Animation,title: MyText.onBoardingTitle2,subtitle: MyText.onBoardingSubTitle2,),
               OnBoardingPage(animation: MyImages.onboarding3Animation,title: MyText.onBoardingTitle3,subtitle: MyText.onBoardingSubTitle3,),
             ],
           ),
          //smooth page indictor
          OnBoardingDotNavgation()

        ],
      ),
    );
  }
}




class OnBoardingDotNavgation extends StatelessWidget {
  const OnBoardingDotNavgation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: DeviceHelper.getBottomNavigationBarHeight()*4,
        left: DeviceHelper.getScreenWidth(context)/2.3,
        right: DeviceHelper.getScreenHeight(context)/2.3,
        child: SmoothPageIndicator(controller: PageController(), count: 3,effect: ExpandingDotsEffect(
          dotHeight: 6.0,
        ),));
  }
}