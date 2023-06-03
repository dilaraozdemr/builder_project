import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class LoginHeaderWidget extends StatelessWidget {
   LoginHeaderWidget({
    super.key,
    required this.size,
     required this.label,
     required this.image,
  });

  final Size size;
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.35,
          width: size.width * 0.7,
          child: Image.asset(image),
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: "pass",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}