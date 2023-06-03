import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../repository/authentication_repository/authenticaiton_repository.dart';

class LoginScreenController extends GetxController{
  static LoginScreenController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser(String email, String password){
    AuthentiacaitonRepository.instance.loginUserWithEmailAndPassword(email, password);
  }
  void logoutUser () async{
    await AuthentiacaitonRepository.instance.logout();
  }

}