
import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 6),
          () =>
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color(0xff1a1c2a),
        child: const Center(
          child:Text(
            "Splash Screen",
            style: TextStyle(fontSize: 35.0, fontFamily: 'Lato', color: Colors.white, ),
          ),
        ),
      ),
    );
  }
}
