import 'package:deliveryapp/auth/login.dart';
import 'package:deliveryapp/consts/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("assets/images/water2.png"),
      titleText: Text(
        "Welcome to DeliveryApp",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryBlue,
            shadows: [
              Shadow(
                color: AppColors.creamWhite,
                blurRadius: 20,
              )
            ]),
      ),
      descText: Text(
        "Experience the easiest way to get water delivered to your doorstep. Stay hydrated without the hassle!",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    OnbordingData(
      image: AssetImage("assets/images/water3.png"),
      titleText: Text(
        "Fast & Reliable Delivery",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryBlue,
            shadows: [
              Shadow(
                color: AppColors.creamWhite,
                blurRadius: 25,
              )
            ]),
      ),
      descText: Text(
        "Our trusted delivery team ensures your water reaches you fresh and on time, every time.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    OnbordingData(
      image: AssetImage("assets/images/water3.png"),
      titleText: Text(
        "Track Your Orders",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryBlue,
            shadows: [
              Shadow(
                color: AppColors.creamWhite,
                blurRadius: 20,
              )
            ]),
      ),
      descText: Text(
        "Stay updated with real-time order tracking and enjoy peace of mind knowing exactly when your water will arrive.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      gradient: LinearGradient(
        colors: [AppColors.secondaryBlue, AppColors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      onbordingDataList: list,
      colors: [
        Colors.white,
        AppColors.secondaryBlue,
      ],
      nextButton: Text(
        "NEXT",
        style: TextStyle(
          color: AppColors.secondaryBlue,
          fontWeight: FontWeight.w700,
        ),
      ),
      lastButton: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text(
          "GOT IT",
          style: TextStyle(
            color: AppColors.secondaryBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      skipButton: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text(
          "SKIP",
          style: TextStyle(
            color: AppColors.secondaryBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      selectedDotColor: AppColors.secondaryBlue,
      unSelectdDotColor: Colors.grey,
    );
  }
}
