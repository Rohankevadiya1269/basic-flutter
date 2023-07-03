import 'package:flutter/material.dart';
import 'package:shared_preference/screens/home_page.dart';
import 'package:shared_preference/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle_rounded,
                  size: 80, color: Colors.purple[300]),
              const SizedBox(height: 15),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19))),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[500]),
                    ),
                    onPressed: () async {
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
