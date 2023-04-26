import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:salute_medical/views/screens/welcome_screen/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain)),
        ),
        nextScreen: const WelcomeScreen(),
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        splashIconSize: 150,
        animationDuration: const Duration(milliseconds: 1000),
        duration: 1000,
      ),
    );
  }
}
