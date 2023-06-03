import 'package:builder_project/src/features/authentication/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width * 0.6,
                child: Image.asset("assets/images/build.png"),
              ),
              Text(
                "Kayıt olarak ",
                style: TextStyle(
                  fontFamily: "pass",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "aramıza katılın ve",
                style: TextStyle(
                  fontFamily: "pass",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "binalarınızın güvenliğinden emin olun",
                style: TextStyle(
                  fontFamily: "pass",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.fullNameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person,
                              color: AppColors.welcomeTextColor),
                          labelText: "Ad Soyad",
                          labelStyle: TextStyle(
                              fontFamily: "pass",
                              fontSize: 16,
                              color: Colors.black),
                          hintTextDirection: TextDirection.ltr,
                          hintText: "Ad Soyad",
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
                        controller: controller.emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail_sharp,
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
                        controller: controller.phoneNoController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone_android,
                              color: AppColors.welcomeTextColor),
                          labelText: "Telefon Numarası",
                          labelStyle: TextStyle(
                              fontFamily: "pass",
                              fontSize: 16,
                              color: Colors.black),
                          hintTextDirection: TextDirection.ltr,
                          hintText: "Telefon Numarası",
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
                      Obx(
                        ()=> TextFormField(
                          controller: controller.passwordController,
                          obscureText: controller.obsecureText.value,
                          decoration:  InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint_outlined,
                                color: AppColors.welcomeTextColor),
                            labelText: "Şifre",

                            labelStyle: TextStyle(
                                fontFamily: "pass",
                                fontSize: 16,
                                color: Colors.black),
                            hintTextDirection: TextDirection.ltr,
                            hintText: "Şifre",
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
                              onPressed: () => controller.obsecureTextStatus(),
                              icon: Icon(Icons.remove_red_eye_sharp,color: Colors.deepPurple),
                            ),
                            helperText: "En az 4 karakterli",
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Obx(
                        ()=> Visibility(
                          visible: controller.isAuditorCheckBoxChecked.value,
                          child: TextFormField(
                            controller: controller.auditorController,
                            obscureText: controller.obsecureText.value,
                            decoration:  InputDecoration(
                              prefixIcon: Icon(Icons.personal_injury_outlined,
                                  color: AppColors.welcomeTextColor),
                              labelText: "Denetçi",

                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Denetçi",
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
                                onPressed: () => controller.obsecureTextStatus(),
                                icon: Icon(Icons.remove_red_eye_sharp,color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => Row(
                          children: [
                            Checkbox(
                              value: controller.isAuditorCheckBoxChecked.value,
                              onChanged: (value) =>
                                  controller.changeAuditorStatus(),
                            ),
                            Text(
                              "Denetçiyim",
                              style: TextStyle(
                                fontFamily: "pass",
                                fontSize: 20,
                                fontWeight: controller.isAuditorCheckBoxChecked.value ? FontWeight.w600 : FontWeight.w100,
                                color: controller.isAuditorCheckBoxChecked.value ? Colors.deepPurpleAccent : Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    focusColor: AppColors.welcomeTextColor,
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(
                          controller.emailController.text.trim(),
                          controller.passwordController.text.trim(),
                          controller.fullNameController.text.trim(),
                          controller.phoneNoController.text.trim(),
                          controller.isAuditorCheckBoxChecked.value,
                          controller.auditorController.text.trim(),
                        );
                      }
                      print("Butona bir kere basıldı");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: AppColors.welcomeTextColor),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
