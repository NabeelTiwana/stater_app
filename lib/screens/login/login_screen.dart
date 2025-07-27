import 'package:flutter/material.dart';
import 'package:starter_app/responsive/responsive_helper.dart';
import 'package:starter_app/screens/login/widget/text_form_feild.dart';
import 'package:starter_app/utils/constant/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(MyText.loginTitle),
          SizedBox(
            height: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 16.0,
              largePhone: 24.0,
              mediumPhone: 20.0,
            ),
          ),
          Text(MyText.loginSubTitle),
          SizedBox(
            height: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 16.0,
              largePhone: 24.0,
              mediumPhone: 20.0,
            ),
          ),
          MyEmailFormField(),
        ],
      ),
    );
  }
}


