import 'dart:async';

import 'package:firebase_authentication/provider/sign_in_provider.dart';
import 'package:firebase_authentication/screens/home_screen.dart';
import 'package:firebase_authentication/screens/login_screen.dart';
import 'package:firebase_authentication/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    super.initState();
    Timer(const Duration(seconds: 2), () {
       sp.isSignedIn == false
        ? Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()))
        : Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Image(
          image: AssetImage(Config.app_icon),
          height: 80,
          width: 80,
        ),
      )),
    );
  }
}
