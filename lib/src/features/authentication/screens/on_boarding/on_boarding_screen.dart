import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/constants/text_strings.dart';
import 'package:builder_project/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'on_boarding_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingWidget(
        model: OnBoardingModel(
            image: AssetConstant.onboardtool,
            bgColor: AppColors.onBoarding1Color,
            counterText: TextString.countText1,
            subTitle: TextString.onBoardingSubTitle1,
            title: TextString.onBoardingTitle1,
            height: size.height),
      ),
      OnBoardingWidget(
        model: OnBoardingModel(
            image: AssetConstant.onboardbuild,
            bgColor: AppColors.onBoarding2Color,
            counterText: TextString.countText2,
            subTitle: TextString.onBoardingSubTitle2,
            title: TextString.onBoardingTitle2,
            height: size.height),
      ),
      OnBoardingWidget(
        model: OnBoardingModel(
            image: AssetConstant.onboardtasima,
            bgColor: AppColors.backgroundColor,
            counterText: TextString.countText3,
            subTitle: TextString.onBoardingSubTitle3,
            title: TextString.onBoardingTitle3,
            height: size.height),
      ),

    ];
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),

        ],
      ),
    );
  }
}
