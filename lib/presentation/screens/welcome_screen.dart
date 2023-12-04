import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // INTRODUCTION_SCREEN ================================================
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          // Page 1 ======================================================
          PageViewModel(
            titleWidget: const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Description description descreption description. Description description descreption description. Description description descreption description",
            image: Image.asset(
              "assets/icons/coin.png",
              height: 200,
            ),
          ),
          // Page 2 ======================================================
          PageViewModel(
            titleWidget: const Text(
              "Next",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Description description descreption description. Description description descreption description. Description description descreption description",
            image: Image.asset(
              "assets/icons/wallet.png",
              height: 200,
            ),
          ),
          // Page 3 ======================================================
          PageViewModel(
            titleWidget: const Text(
              "Finish",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Description description descreption description. Description description descreption description. Description description descreption description",
            image: Image.asset(
              "assets/icons/credit-card.png",
              height: 200,
            ),
          ),
        ],
        // SETTINGS ========================================================
        next: const Icon(Icons.arrow_forward_ios),
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        done: const Text("Done"),
        dotsDecorator: const DotsDecorator(
          activeColor: Colors.blue,
          size: Size(10, 10),
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
        ),
      ),
    );
  }
}
