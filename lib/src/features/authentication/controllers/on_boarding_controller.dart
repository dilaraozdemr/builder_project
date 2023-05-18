import 'package:builder_project/src/features/authentication/screens/welcome/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/AssetConstants.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  final pages = [
    OnBoardingWidget(
      model: OnBoardingModel(
        image: AssetConstant.onboardtool,
        bgColor: AppColors.onBoarding1Color,
        counterText: TextString.countText1,
        subTitle: TextString.onBoardingSubTitle1,
        title: TextString.onBoardingTitle1,
      ),
    ),
    OnBoardingWidget(
      model: OnBoardingModel(
        image: AssetConstant.onboardbuild,
        bgColor: AppColors.onBoarding2Color,
        counterText: TextString.countText2,
        subTitle: TextString.onBoardingSubTitle2,
        title: TextString.onBoardingTitle2,
      ),
    ),
    OnBoardingWidget(
      model: OnBoardingModel(
        image: AssetConstant.onboardtasima,
        bgColor: AppColors.backgroundColor,
        counterText: TextString.countText3,
        subTitle: TextString.onBoardingSubTitle3,
        title: TextString.onBoardingTitle3,
      ),
    ),
  ];


  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    if(controller.currentPage == 2){
      Get.to(WelcomeScreen());
    }
    int nextPage =controller.currentPage! + 1;
    controller.animateToPage(page: nextPage!);
  }
}
