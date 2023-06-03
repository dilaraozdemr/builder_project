import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/models/building_model.dart';
import 'package:flutter/material.dart';

class BuildingDetailScreen extends StatelessWidget {
  final BuildingModel model;

  const BuildingDetailScreen({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(model.buildingName ?? ""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              child: Image.network(model.imageUrl ?? ""),
            ),
            Row(

              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        model.buildingName ?? "",
                        style: TextStyle(
                          color: AppColors.welcomeTextColor,
                          fontFamily: "pass",
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
