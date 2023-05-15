import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:builder_project/src/features/authentication/screens/welcome/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashScreenController());
  //widget ağacında ilk başlatılan kopyayı kullanmak istediğimiz için olulturduk.
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetConstant.splashbackim),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              top:  250 ,
              left: splashController.animate.value ? 100 : -200,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: ClipOval(
                  child: Image.asset(
                    AssetConstant.splashicon,
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
              duration: const Duration(milliseconds: 1600),
            ),
          ),
          Positioned(
            top: 450,
            left: 110,
            child: const Text(
              "BİNALAR",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "pass",
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }


}
