import 'package:builder_project/src/features/authentication/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width * 0.6,
                child: Image.asset("assets/images/build.png"),
              ),
              Text(
                "              Şifrenizi güncelleyerek \n             aramıza tekrar katılın ve \nbinalarınızın güvenliğinden emin olun",
                style: TextStyle(
                  fontFamily: "pass",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person,
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
                            borderSide: BorderSide(width: 4),
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person,
                              color: AppColors.welcomeTextColor),
                          labelText: "Password",
                          labelStyle: TextStyle(
                              fontFamily: "pass",
                              fontSize: 16,
                              color: Colors.black),
                          hintTextDirection: TextDirection.ltr,
                          hintText: "Password",
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
                            borderSide: BorderSide(width: 4),
                          ),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                          helperText: "En az 4 karakterli",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,

                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person,
                              color: AppColors.welcomeTextColor),
                          labelText: "Password",
                          helperText: "Şifrenizi tekrar giriniz",
                          labelStyle: TextStyle(
                              fontFamily: "pass",
                              fontSize: 16,
                              color: Colors.black),
                          hintTextDirection: TextDirection.ltr,
                          hintText: "Password",
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
                            borderSide: BorderSide(width: 4),
                          ),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
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
                            width: 320,
                            height: 75,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: AppColors.welcomeTextColor),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                "Kayıt ol",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
