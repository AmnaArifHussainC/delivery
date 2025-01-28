import 'package:deliveryapp/consts/const_color.dart';
import 'package:deliveryapp/consts/text_size.dart';
import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text("DeliveryApp", style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.aquaBlue,
      ),
    );
  }
}
