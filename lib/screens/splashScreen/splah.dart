import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:deliveryapp/consts/const_color.dart';
import 'package:deliveryapp/screens/onboarding/onboarding_Screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: FlutterSplashScreen(
      duration: const Duration(milliseconds: 2000),
      nextScreen:  OnboardingScreen(),
      backgroundColor: Colors.white,
      splashScreenBody: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),

            const Spacer(),
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/water2.png'),
            ),
            const Spacer(),
            Text("DeliveryApp", style: TextStyle(color: AppColors.secondaryBlue),),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    ),
    );
  }
}
