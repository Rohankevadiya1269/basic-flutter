import 'package:flutter/material.dart';
import 'package:shared_preference/screens/login_screen.dart';
import 'package:shared_preference/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.purple[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_filled,
                size: 75,
                color: Colors.white.withOpacity(0.6),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[500])),
                    onPressed: () async {
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      'Logout',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
