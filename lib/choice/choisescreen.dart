import 'package:deliveryapp/consts/const_color.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/custome/choice _btns.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      appBar: AppBar(
        toolbarHeight: screenHeight*0.08,
        centerTitle: true,
        title: const Text(
          "DeliveryApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.secondaryBlue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter as:",
                style: TextStyle(
                    color: AppColors.secondaryBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: screenHeight*0.09,
              ),
              const ChoiceButtons(text: "Seller",),
              SizedBox(height: screenHeight*0.02,),
              const ChoiceButtons(text: "User",),
            ],
          ),
        ),
      ),
    );
  }
}

