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
  final UserModel userModel;

  ProfileScreen({Key? key, required this.userModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        iconTheme: IconThemeData(
          color: AppColors.welcomeTextColor,
          size: 30,
        ),
        centerTitle: true,
        title: Text(
          "Profilim",
          style: TextStyle(
            color: AppColors.welcomeTextColor,
            fontSize: 28,
            fontFamily: "pass",
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  width: 200,
                  child: Lottie.asset(
                    AssetConstant.prfile2Lottie,
                  ),
                ),
                Text(
                  userModel.fullName ?? "",
                  style: TextStyle(
                    color: AppColors.welcomeTextColor,
                    fontFamily: "pass",
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.welcomeTextColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Image(
                        height: 80,
                        width: 80,
                        image: AssetImage(AssetConstant.emailIcon),
                      ),
                      Text(
                        userModel.email ?? "",
                        style: TextStyle(
                          fontFamily: "pass",
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.welcomeTextColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Image(
                        height: 80,
                        width: 80,
                        image: AssetImage(AssetConstant.phoneIcon),
                      ),
                      Text(
                        userModel.phoneNo ?? "",
                        style: TextStyle(
                          fontFamily: "pass",
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
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
                              Image(
                                height: 80,
                                width: 80,
                                image: AssetImage(AssetConstant.logoutIcon),
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
