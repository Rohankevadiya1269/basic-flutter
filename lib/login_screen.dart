// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:learning_app/dash_screen.dart';
import 'package:learning_app/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  bool? _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InitialScreen()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.purple,
          ),
        ),
        title: const Text(
          'LOG IN',
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
            child: Center(
              child: Text(
                'Learning App',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 25, 10, 25),
            child: Text(
              textAlign: TextAlign.center,
              'Enter your log in details to access your account',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
                width: 140,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  label: const Text(
                    'Facebook',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color.fromARGB(255, 15, 19, 235),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/background/gplus.png',
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Google',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Form(
              key: _formfield,
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0),
                            borderSide: const BorderSide(
                              color: Colors.purple,
                              width: 1.5,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(0.95)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        bool emailValid = RegExp(
                                r"^[a-z A-Z 0-9.!#$%&'*+-/=?^_`{|}~]+@[a-z A-Z 0-9]+\.[a-z A-Z]+")
                            .hasMatch(value);
                        if (!emailValid) {
                          return "Enter Valid email";
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          borderSide: const BorderSide(
                            color: Colors.purple,
                            width: 1.5,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(0.95)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passController.text.length < 6) {
                          return "Password length should not be less than 6 characters";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 16, 0),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.purple,
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value;
                            });
                          },
                        ),
                        const Text(
                          'Remember me?',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            // Perform forgot password action
                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )),
          ElevatedButton(
            onPressed: () {
              if (_formfield.currentState!.validate()) {
                // Email and password are valid, navigate to the next page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              minimumSize: const Size(250, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'Log in with your account',
              style: TextStyle(fontSize: 19),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an Account?",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.purple,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
