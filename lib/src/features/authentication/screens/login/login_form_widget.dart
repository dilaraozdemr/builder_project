import 'package:builder_project/src/features/authentication/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../forgot_password/forgot_password_options/BottomSheetWidget.dart';
import '../forgot_password/forgot_password_options/forgot_password_model_bottom_sheet.dart';
import '../on_boarding/on_boarding_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined,
                    color: AppColors.welcomeTextColor),
                labelText: "E-mail",
                labelStyle: TextStyle(
                    fontFamily: "pass", fontSize: 16, color: Colors.black),
                hintTextDirection: TextDirection.ltr,
                hintText: "E-mail",
                hintStyle: TextStyle(
                    fontFamily: "pass", fontSize: 16, color: Colors.black),
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
                  borderSide: BorderSide(width: 4),
                ),
                helperText: "En az 4 karakterli",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined,
                    color: AppColors.welcomeTextColor),
                labelText: "Password",
                labelStyle: TextStyle(
                    fontFamily: "pass", fontSize: 16, color: Colors.black),
                hintTextDirection: TextDirection.ltr,
                hintText: "Password",
                hintStyle: TextStyle(
                    fontFamily: "pass", fontSize: 16, color: Colors.black),
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
                  borderSide: BorderSide(width: 4),
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ForgotPasswordScreen.buildGestureDetector(context, size),
            const SizedBox(
              height: 24,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                focusColor: AppColors.welcomeTextColor,
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Get.to(HomeScreen());
                  print("Butona bir kere basıldı");
                },
                child: Container(
                  width: 300,
                  height: 68,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: AppColors.welcomeTextColor),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(
                        color: AppColors.welcomeTextColor,
                        fontFamily: "pass",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


