import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/constants/text_strings.dart';
import 'package:builder_project/src/features/authentication/screens/login/login_screen.dart';
import 'package:builder_project/src/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: AppColors.backgroundColor,
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [

                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 350,
                  child: Image.asset(AssetConstant.signassets),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Yapı Kontrol",
                  style: TextStyle(
                    fontFamily: "pass",
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: AppColors.welcomeTextColor,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      Get.to(LoginScreen());
                      print("Butona bir kere basıldı");
                    },
                    child: Container(
                      width: 300,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.05), offset: Offset(2,2), blurRadius: 8),
                        ],
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(
                              color: AppColors.welcomeTextColor,
                              fontFamily: "pass",
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextString.tWelcomeString,
                      style: TextStyle(
                          color: AppColors.welcomeTextColor,
                          fontFamily: "pass",
                          fontSize: 21,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(SignupScreen());
                      },
                      child: Text(
                        "Kayıt Olun",
                        style: TextStyle(
                            color: AppColors.welcomeTextColor,
                            fontFamily: "pass",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
