
import 'package:deliveryapp/consts/const_color.dart';
import 'package:flutter/material.dart';

class CustomeAuthBtn extends StatelessWidget {
  final String btnTxt;
  final VoidCallback authbtn;
  const CustomeAuthBtn({
    super.key,
    required this.authbtn,
    required this.btnTxt,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: authbtn,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(btnTxt, style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600
          ),),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          backgroundColor: AppColors.secondaryBlue,
        ),
      ),
    );
  }
}

