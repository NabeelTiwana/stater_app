import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starter_app/helpers/preferences_helper.dart';
import 'package:starter_app/screens/home_page.dart';
import 'package:starter_app/utils/constant/images.dart';

import '../login/login_screen.dart';
import '../onboardings/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
  goNext();

  }
  void goNext()async{
    //splash delay
    await Future.delayed(Duration(seconds: 2));
    bool firstTime=await PrefHelper.isFirstTime();
    bool loggedIn=await PrefHelper.isLoggedIn();

    if(firstTime){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    }else if(!loggedIn){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple,
            Colors.indigo,
          ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child:Center(child: Image.asset(MyImages.splashlogo)) ,
      ),
    );
  }
}
