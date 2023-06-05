import 'package:flutter/material.dart';
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
            fontSize: 30,
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