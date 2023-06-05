import 'package:builder_project/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:get/get.dart';
class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();//direkt bu class a ulaşmak için örneklerini
  //oluşturmamak için yazdık.

  RxBool animate = false.obs;

  Future startAnimation() async{
    await Future.delayed(Duration(seconds: 3));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 7000));
    Get.to(OnBoardingScreen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}