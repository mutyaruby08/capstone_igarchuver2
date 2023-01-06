
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../widgets/onboard_button.dart';
import 'authenticate/login_screen.dart';


class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Meet Pets',
              body: 'Meet beautiful and cute pets.',
              image: buildImage('assets/images/pet.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Adopt Pet',
              body: 'Adopt a pet and make it a part of your home.',
              image: buildImage('assets/images/adopt.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Donation',
              body: 'Donate funds for Animal shelter organization to give hope to hungry and homeless animals.',
              image: buildImage('assets/images/donate.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Our way of connecting pets, anywhere',
              body: 'Join our growing community now!',
              footer: ButtonWidget(
                text: 'Get Started',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/images/igarchu_logo.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text('Get Started', style: TextStyle(color: Color.fromRGBO(90, 53, 44, 1),fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip', style: TextStyle(color: Color.fromRGBO(90, 53, 44, 1), fontWeight: FontWeight.bold),),
          onSkip: () => goToHome(context),
          next: const Icon(Icons.arrow_forward, color: Color.fromRGBO(90, 53, 44, 1)),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: const Color.fromRGBO(254, 233, 214, 1),
          skipOrBackFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => 
        LoginScreen(toggleView: null,)),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, height: 300,width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color.fromRGBO(236, 167, 102, 1),
        //activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: const Color.fromRGBO(90, 53, 44, 1),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16, fontFamily: 'Poppins',),
        imagePadding: EdgeInsets.all(24),
        pageColor:  Color.fromRGBO(254, 233, 214, 1),
      );
}