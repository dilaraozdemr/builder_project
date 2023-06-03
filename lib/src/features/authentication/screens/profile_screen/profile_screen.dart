import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/controllers/login_controller.dart';
import 'package:builder_project/src/features/authentication/models/building_model.dart';
import 'package:builder_project/src/features/authentication/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatelessWidget {
  final loginController = Get.put(LoginScreenController());
  final userModel = UserModel();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  width: 220,
                  child: Lottie.asset(
                    AssetConstant.userLottie,
                  ),
                ),
                Text(
                  userModel.fullName ?? "",
                  style: TextStyle(
                    color: AppColors.welcomeTextColor,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => loginController.logoutUser(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2, color: AppColors.welcomeTextColor),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Çıkış Yap",
                                  style: TextStyle(
                                    fontFamily: "pass",
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Image(
                                height: 50,
                                width: 50,
                                image: AssetImage(AssetConstant.logoutIcon),
                              ),
                            ],
                          ),
                        ),
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
