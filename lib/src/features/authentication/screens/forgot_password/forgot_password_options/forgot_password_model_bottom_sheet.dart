import 'package:builder_project/src/features/authentication/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/colors.dart';
import 'BottomSheetWidget.dart';

class ForgotPasswordScreen {
  static GestureDetector buildGestureDetector(BuildContext context, Size size) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: AppColors.bottomshit,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(35.0),
              bottom: Radius.circular(35.0),
            ),
          ),
          context: context,
          builder: (context) => Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Birini seçiniz:",
                  style: TextStyle(
                    color: AppColors.welcomeTextColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "pass",
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                Text(
                  "Şifrenizi yenilemek için birini seçiniz.",
                  style: TextStyle(
                    color: AppColors.welcomeTextColor,
                    fontFamily: "pass",
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                BottomSheetWidget(
                  size: size,
                  btnIcon: Icons.mail_outline_rounded,
                  title: "E-mail",
                  subTitle: "E-mail ile değiştirebilirsiniz",
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(ForgotPasswordMailScreen());
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        );
        print("şifremi unuttum basıldı.");
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 170),
        child: Text(
          "Şifremi unuttum?",
          style: TextStyle(
              fontSize: 18,
              color: AppColors.welcomeTextColor,
              fontFamily: "pass"),
        ),
      ),
    );
  }
}
