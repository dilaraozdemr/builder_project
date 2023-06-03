import 'dart:developer';

import 'package:builder_project/src/features/authentication/models/user_model.dart';
import 'package:builder_project/src/features/authentication/screens/home/home.dart';
import 'package:builder_project/src/features/authentication/screens/welcome/WelcomeScreen.dart';
import 'package:builder_project/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthentiacaitonRepository extends GetxController {
  static AuthentiacaitonRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => HomeScreen());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password,
      String fullName, String phoneNo, bool isAuditor, String AuditorId) async {
    try {
      final response =
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      UserModel model = UserModel();
      model.phoneNo = phoneNo;
      model.fullName=fullName;
      model.email = email;
      model.isAuditor = isAuditor;
      model.auditorId = AuditorId;
      model.id = response.user?.uid ?? "";
      createUserToDb(model);
      await getCurrentUser(response.user!.uid);
    } on FirebaseAuthException catch (e) {

    } catch (_) {}
  }

  Future<void> loginUserWithEmailAndPassword(String email,
      String password) async {
    try {
      final response = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
     await getCurrentUser(response.user!.uid);
      firebaseUser.value != null ? Get.offAll(() => HomeScreen()) : Get.to(() =>
          WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print("EXCEPTION - ${ex.message}");
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();

  void createUserToDb(UserModel model) {
    FirebaseFirestore.instance.collection('users').doc(model.id).set({
      "id": model.id,
      "fullName": model.fullName,
      "email": model.email,
      "phoneNo": model.phoneNo,
      "isAuditor": model.isAuditor,
      "auditorId": model.auditorId,
    });

  }
  Future<UserModel> getCurrentUser(String id) async {
    var response = await FirebaseFirestore.instance.collection('users').doc(id).get();
    var user = UserModel.fromDocumentSnapshot(response);
    if(user.isAuditor ??false){
      Get.snackbar(snackPosition: SnackPosition.BOTTOM,"Hoşgeldiniz Denetçi","${user.fullName}\nDenetçi ID:${user.auditorId}" ,);
    }
    else{
      Get.snackbar(snackPosition: SnackPosition.BOTTOM,"Hoşgeldiniz Kullanıcı", user.fullName ??"");
    }
    return user;
  }
}
