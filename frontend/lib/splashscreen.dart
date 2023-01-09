import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_frontend/signup.dart';

class splashscreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => signup())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/PayBae.gif'),
              fit: BoxFit.cover,
            ),
          ),
        )
      )
    );
  }
}
