import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starter_app/helpers/device_helper.dart';
import 'package:starter_app/screens/onboardings/widget/onboarding_page.dart';
import 'package:starter_app/utils/constant/images.dart';
import 'package:starter_app/utils/constant/texts.dart';

import '../../common/widget/my_elevated_button.dart';
import '../home_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              OnBoardingPage(
                animation: MyImages.onboarding1Animation,
                title: MyText.onBoardingTitle1,
                subtitle: MyText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                animation: MyImages.onboarding2Animation,
                title: MyText.onBoardingTitle2,
                subtitle: MyText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                animation: MyImages.onboarding3Animation,
                title: MyText.onBoardingTitle3,
                subtitle: MyText.onBoardingSubTitle3,
              ),
            ],
          ),

          // Dot Navigation
          Positioned(
            bottom: DeviceHelper.getBottomNavigationBarHeight() * 4,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.indigo,
                  dotColor: Colors.grey,
                  dotHeight: 6,
                  dotWidth: 6,
                  spacing: 8,
                ),
              ),
            ),
          ),

          // Button
          MyElevatedButton(
            onPressed: () {
              if (_currentPage < 2) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                // Navigate to next screen when on last page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              }
            },
            child: Text(
              _currentPage == 2 ? 'Get Started' : 'Next',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}