import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                LoginHeaderWidget(size: size, label: "Tekrar hoş geldiniz", image: AssetConstant.signassets,),
                LoginForm(
                    emailController: emailController,
                    passwordController: passwordController),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      color: AppColors.welcomeTextColor,
                      fontSize: 20,
                      fontFamily: "pass",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 60,
                  height: 60,
                  child: Image(
                    image: AssetImage(AssetConstant.googlepng),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
