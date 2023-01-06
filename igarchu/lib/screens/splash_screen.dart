import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const onBoardingScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
            color: const Color.fromRGBO(254, 233, 214, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/igarchu_logo.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ],
            )),
            );
  }
}