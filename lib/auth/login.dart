import 'package:deliveryapp/auth/register.dart';
import 'package:deliveryapp/consts/const_color.dart';
import 'package:deliveryapp/custome/btn_of_auth.dart';
import 'package:deliveryapp/custome/textfield_of_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

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
      body: Center( // Center widget ensures the container is centered
        child: Container(
          height: screenHeight * 0.6,
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
                  "Login Screen",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: AppColors.secondaryBlue),
                ),
                SizedBox(
                  height: screenHeight * 0.09,
                ),
                CustomTextField(
                  controller: emailcontroller,
                  prefixIcon: Icons.email_outlined,
                  hintText: "Enter Email..",
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                CustomTextField(
                  controller: passcontroller,
                  prefixIcon: Icons.lock,
                  hintText: "Enter Password...",
                ),
                SizedBox(
                  height: screenWidth * 0.1,
                ),
                CustomeAuthBtn(
                  authbtn: () {},
                  btnTxt: "Login",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have no account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: AppColors.secondaryBlue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
