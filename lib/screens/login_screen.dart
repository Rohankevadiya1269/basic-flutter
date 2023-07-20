// ignore_for_file: use_build_context_synchronous

import 'package:firebase_authentication/provider/internet_provider.dart';
import 'package:firebase_authentication/provider/sign_in_provider.dart';
// import 'package:firebase_authentication/screens/home_screen.dart';
import 'package:firebase_authentication/utils/config.dart';
// import 'package:firebase_authentication/utils/next_screen.dart';
import 'package:firebase_authentication/utils/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  final RoundedLoadingButtonController googleController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController facebookController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Login......'),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 40, right: 40, top: 90, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage(Config.app_icon),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Welcome to Flutter Firebase Authentication",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Learn Authentication with provider',
                        style: TextStyle(fontSize: 17, color: Colors.grey[400]),
                      )
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedLoadingButton(
                      controller: googleController,
                      successColor: Colors.red,
                      color: Colors.red,
                      width: MediaQuery.of(context).size.width * 0.8,
                      elevation: 0,
                      borderRadius: 25,
                      onPressed: () {
                        handleGoogleSignIn();
                      },
                      child: const Wrap(
                        children: [
                          Icon(
                            FontAwesomeIcons.google,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedLoadingButton(
                      controller: facebookController,
                      successColor: Colors.blue,
                      color: Colors.blue,
                      width: MediaQuery.of(context).size.width * 0.8,
                      elevation: 0,
                      borderRadius: 25,
                      onPressed: () {},
                      child: const Wrap(
                        children: [
                          Icon(
                            FontAwesomeIcons.facebook,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future handleGoogleSignIn() async {
    final sp = context.read<SignInProvider>();
    final ip = context.read<InternetProvider>();

    await ip.checkInternetConnection();

    if (ip.hasinternet == false) {
      openSnackbar(context, 'Check your Internet connection', Colors.red);
      googleController.reset();
    } else {
      await sp.signInWithGoogle().then((value) {
        if (sp.hasError == true) {
          openSnackbar(context, sp.errorCode.toString(), Colors.red);
          googleController.reset();
        } else {
          sp.checkUserExists().then((value) async {
            if (value == true) {
            } else {
              sp.saveDataToFirestore().then(
                  (value) => sp.saveDataToSharedPreferences().then((value) {
                        googleController.success();
                        // handleAfterSignIn();
                      }));
            }
          });
        }
      });
    }
  }
}

// handleAfterSignIn() {
//   Future.delayed(const Duration(milliseconds: 1000)).then((value) {
//     nextScreenReplace(context, const HomeScreen());
//   });
// }
