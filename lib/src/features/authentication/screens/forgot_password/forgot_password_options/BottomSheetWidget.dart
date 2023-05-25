import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class BottomSheetWidget extends StatelessWidget {
  BottomSheetWidget({
    required this.size,
    required this.subTitle,
    required this.title,
    required this.btnIcon,
    required this.onTap,
    super.key,
  });

  final Size size;
  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF9F5F6),
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: InkWell(
        focusColor: AppColors.welcomeTextColor,
        borderRadius: BorderRadius.circular(20),
        hoverColor: AppColors.welcomeTextColor,
        onTap: onTap,
        child: Container(
          padding: const  EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                btnIcon,
                size: 60.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: "pass",
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      subTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: "pass",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}