import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../controllers/login_controller.dart';
import '../forgot_password/forgot_password_options/forgot_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
  });

  final controller = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
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
            Obx(
              () => TextFormField(
                controller: controller.passwordController,
                obscureText: controller.obsecureText.value,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint_outlined,
                        color: AppColors.welcomeTextColor),
                    labelText: "Şifre",
                    labelStyle: TextStyle(
                        fontFamily: "pass", fontSize: 16, color: Colors.black),
                    hintTextDirection: TextDirection.ltr,
                    hintText: "Şifre",
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
                      onPressed: () => controller.obsecureTextStatus(),
                      icon: Icon(Icons.remove_red_eye_sharp,
                          color: Colors.deepPurple),
                    )),
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
                  controller.loginUser(controller.emailController.text.trim(),
                      controller.passwordController.text.trim());
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
