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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _navigateToAppropriateScreen());
  }

  Future<void> _navigateToAppropriateScreen() async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      final results = await Future.wait([
        PrefHelper.isFirstTime(),
        PrefHelper.isLoggedIn(),
      ]);

      final route = results[0]
          ? const OnboardingScreen()
          : (results[1] ? const HomePage() : const LoginScreen());

      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => route),
      );
    } catch (e) {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.indigo],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(child: Image.asset(MyImages.splashlogo)),
      ),
    );
  }
}