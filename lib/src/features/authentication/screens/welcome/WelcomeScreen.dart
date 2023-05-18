import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/constants/text_strings.dart';
import 'package:builder_project/src/features/authentication/screens/login/login_screen.dart';
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
            child:  Container(
              color: AppColors.backgroundColor,
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  width: 500,
                    height: 390,
                    child: Lottie.asset(AssetConstant.welcomelottie)),
                const SizedBox(
                  height: 125,
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
                      width: 250,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Center(
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(
                              color: AppColors.welcomeTextColor,
                              fontFamily: "pass",
                              fontSize: 35,
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
                    Text(
                      "Kayıt Olun",
                      style: TextStyle(
                          color: AppColors.welcomeTextColor,
                          fontFamily: "pass",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 2,
                        width: 150,
                        color: AppColors.welcomeTextColor,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 2,
                        width: 150,
                        color: AppColors.welcomeTextColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
