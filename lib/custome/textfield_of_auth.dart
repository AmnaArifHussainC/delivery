import 'package:deliveryapp/consts/const_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final Color? iconColor;
  final double? iconSize;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryBlue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        prefixIcon: Icon(
          prefixIcon,
          color: iconColor ?? AppColors.secondaryBlue, // Default color
          size: iconSize ?? 24.0, // Default size
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.secondaryBlue, width: 2),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
