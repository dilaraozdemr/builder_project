import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "OTP\nCODE",
                    style: TextStyle(fontSize: 60, fontFamily: "pass"),
                  ),
                  Expanded(
                    child: Container(
                      child: Lottie.asset(AssetConstant.otplottie),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Lütfen gelen kodu giriniz",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "pass",
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              OtpTextField(
                numberOfFields: 6,
                fillColor: AppColors.welcomeTextColor,
                filled: true,
                keyboardType: TextInputType.number,
                textStyle: TextStyle(
                  color: AppColors.backgroundColor,
                  fontSize: 25,
                ),
                onSubmit: (code){
                  print("OTP is => $code");
                },
              ),
              const SizedBox(
                height: 70,
              ),
              Material(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.welcomeTextColor,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  focusColor: AppColors.backgroundColor,
                  onTap: () {
                    Get.to(LoginScreen());
                    print("Butana basıldı");
                  },
                  child: Container(
                    width: 150,
                    height: 60,
                    child: Center(
                      child: Text(
                        "İleri",
                        style: TextStyle(
                          color: AppColors.backgroundColor,
                          fontFamily: "pass",
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
