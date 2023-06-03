import 'package:builder_project/src/repository/authentication_repository/authenticaiton_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUpController extends GetxController{
  RxBool isAuditorCheckBoxChecked = false.obs;
  RxBool obsecureText = true.obs;
  static SignUpController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneNoController = TextEditingController();
  final auditorController = TextEditingController();

  void registerUser(String email, String password, String fullName, String phoneNo, bool isAuditor, String AuditorId){
    AuthentiacaitonRepository.instance.createUserWithEmailAndPassword(email, password, fullName, phoneNo, isAuditor, AuditorId);
  }
  void changeAuditorStatus(){
    isAuditorCheckBoxChecked.value = !isAuditorCheckBoxChecked.value;
  }
  void obsecureTextStatus(){
    obsecureText.value = !obsecureText.value;
  }
}