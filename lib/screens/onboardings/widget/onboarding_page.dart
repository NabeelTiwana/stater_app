import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../../../helpers/device_helper.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/texts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtite,
  });

  final String animation;
  final String title;
  final String subtite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: DeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title),
          Text(subtite, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
