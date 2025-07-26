import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:starter_app/responsive/responsive_text_style.dart';
import '../../../helpers/device_helper.dart';
import '../../../responsive/responsive_helper.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });

  final String animation;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveHelper.getValueForPhoneSize(
          context,
          smallPhone: 16.0,
          largePhone: 24.0,
          mediumPhone: 20.0,
        ),
      ).copyWith(
        top: DeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [
          Lottie.asset(
            animation,
            height: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: DeviceHelper.getScreenHeight(context) * 0.35,
              largePhone: DeviceHelper.getScreenHeight(context) * 0.45,
              mediumPhone: DeviceHelper.getScreenHeight(context) * 0.4,
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 16.0,
              largePhone: 24.0,
              mediumPhone: 20.0,
            ),
          ),
          Text(
            title,
            style: context.responsiveHeadlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 12.0,
              largePhone: 16.0,
              mediumPhone: 14.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getValueForPhoneSize(
                context,
                smallPhone: 16.0,
                largePhone: 32.0,
                mediumPhone: 24.0,
              ),
            ),
            child: Text(
              subtitle,
              style: context.responsiveBodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}