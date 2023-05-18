import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/constants/text_strings.dart';
import 'package:builder_project/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:builder_project/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                obcontroller.animateToNextSlide();
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: AppColors.welcomeTextColor),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                obcontroller.skip();
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.controller.currentPage,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: AppColors.welcomeTextColor,
                  dotHeight: 5,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
