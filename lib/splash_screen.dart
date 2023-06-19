import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_app/dash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const InitialScreen(
              
            ),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(254, 139, 18, 175),
        child: const Center(
            child: Text('Learning App',
                style: TextStyle(color: Colors.white, fontSize: 45))),
      ),
    );
  }
}
