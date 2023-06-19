import 'package:flutter/material.dart';
import 'package:learning_app/login_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Image.asset(
                'assets/background/bg_screen1.png',
                height: 270,
                width: 370,
                fit: BoxFit.fill,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Online learning platform',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(254, 139, 18, 175)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Text(
                  textAlign: TextAlign.center,
                  'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(250, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25), // Set the desired border radius
                  ),
                ),
                child: const Text(
                  'Start Learning',
                  style: TextStyle(fontSize: 19),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
