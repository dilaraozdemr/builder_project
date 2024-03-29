import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Container(
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 180, top: 48,  bottom: 20),
            child: Image(
              image: AssetImage(model.image),
              height: size.height*0.4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  model.title,
                  style: TextStyle(
                      color: AppColors.welcomeTextColor,
                      fontFamily: "pass",
                      fontSize: 20),
                ),
                Text(
                  model.subTitle,
                  style: TextStyle(
                      color: AppColors.welcomeTextColor,
                      fontFamily: "pass",
                      fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 178,),
          Text(
            model.counterText,
            style: TextStyle(
                color: AppColors.welcomeTextColor,
                fontFamily: "pass",
                fontSize: 15),
          )
        ],
      ),
    );
  }
}