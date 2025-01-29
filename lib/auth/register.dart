import 'package:deliveryapp/auth/login.dart';
import 'package:deliveryapp/consts/const_color.dart';
import 'package:deliveryapp/custome/btn_of_auth.dart';
import 'package:deliveryapp/custome/textfield_of_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  final TextEditingController conpasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.08,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.1), // Add dynamic top spacing
            Center(
              child: Container(
                height: screenHeight * 0.67,
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  color: AppColors.creamWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.secondaryBlue,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "Register Screen",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: AppColors.secondaryBlue,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      CustomTextField(
                        controller: emailcontroller,
                        prefixIcon: Icons.email_outlined,
                        hintText: "Enter Email..",
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      CustomTextField(
                        controller: passcontroller,
                        prefixIcon: Icons.lock,
                        hintText: "Enter Password...",
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      CustomTextField(
                        controller: conpasscontroller,
                        prefixIcon: Icons.lock,
                        hintText: "Confirm Password...",
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      CustomeAuthBtn(
                        authbtn: () {},
                        btnTxt: "Register",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: AppColors.secondaryBlue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.1), // Add dynamic bottom spacing
          ],
        ),
      ),
    );
  }
}
