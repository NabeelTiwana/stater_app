import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('LoginScreen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
