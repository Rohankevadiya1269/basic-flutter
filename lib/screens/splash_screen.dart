import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/screens/home_page.dart';
import 'package:shared_preference/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "Login";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
   whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[300],
        child: const Center(
          child: Icon(Icons.account_circle_rounded,size: 80,color: Colors.white,),
        ),
      ),
    );
  }
  
  void whereToGo() async {

    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
     Timer(const Duration(seconds: 2), () { 
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (context)=>const HomePage())
             );
        }
        else{
          Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>const LoginScreen())
      );
        }
      }
      else{
        Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>const LoginScreen())
      );
      }
    });
  }
}