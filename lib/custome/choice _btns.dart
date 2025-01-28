import 'package:deliveryapp/consts/const_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoiceButtons extends StatelessWidget {
  final String text;

  const ChoiceButtons({
    super.key,
    required this.text,
  });

  @override

  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: screenWidth*0.03),
          child: Text(
              text,
            style: const TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
