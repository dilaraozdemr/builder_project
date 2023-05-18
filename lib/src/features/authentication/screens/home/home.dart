import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/screens/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 115),
            child: Row(
              children: [
                Text(
                  "Ana Sayfa",
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: "pass",
                      color: AppColors.welcomeTextColor),
                ),
                SizedBox(width: 55,),
                GestureDetector(
                  onTap: (){
                    Get.to(ProfileScreen());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.welcomeTextColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
