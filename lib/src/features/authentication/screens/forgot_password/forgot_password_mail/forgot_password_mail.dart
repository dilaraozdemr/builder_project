import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/features/authentication/screens/forgot_password/forgot_password_options/BottomSheetWidget.dart';
import 'package:builder_project/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:builder_project/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../../constants/colors.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  ForgotPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(AssetConstant.passwordresetlottie),
              Text(
                "E-mail bigilerinizi giriniz",
                style: const TextStyle(
                  color: AppColors.welcomeTextColor,
                  fontFamily: "pass",
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 15, right: 15),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined,
                              color: AppColors.welcomeTextColor),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                              fontFamily: "pass",
                              fontSize: 16,
                              color: Colors.black),
                          hintTextDirection: TextDirection.ltr,
                          hintText: "E-mail",
                          hintStyle: TextStyle(
                              fontFamily: "pass",
                              fontSize: 16,
                              color: Colors.black),
                          focusColor: AppColors.backgroundColor,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            borderSide: BorderSide(width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(width: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Material(
                        color: AppColors.welcomeTextColor,
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                          onTap: () {
                            Get.to(const OTPScreen());
                            print("Butona bir kere basıldı");
                          },
                          focusColor: AppColors.backgroundColor,
                          child: Container(
                            width: 120,
                            height: 60,
                            child: Center(
                                child: Text(
                              "İleri",
                              style: TextStyle(
                                fontFamily: "pass",
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
