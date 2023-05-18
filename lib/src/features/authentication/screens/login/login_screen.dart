import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                "           Tekrar Hoşgeldiniz,\n     Giriş Yaparak uygulamayı \n   kullanmaya başlayabilirsiniz",
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
                          helperText: "En az 4 karakterli",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
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
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
