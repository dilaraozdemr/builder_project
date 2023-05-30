import 'package:builder_project/src/features/authentication/controllers/home_controller.dart';
import 'package:builder_project/src/features/authentication/screens/home/model/building_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class AuditorInfLogin extends StatelessWidget {
  AuditorInfLogin({Key? key}) : super(key: key);
  final buildingNameController = TextEditingController();
  final yasController = TextEditingController(text: "6");
  final cimentoMarkaController = TextEditingController(text: "seza");
  final controller = Get.put(HomeController());
  var model = BuildingModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Form(
              child: TextFormField(
                controller: buildingNameController,
                decoration: const InputDecoration(
                  prefixIcon:
                      Icon(Icons.build, color: AppColors.welcomeTextColor),
                  labelText: "Bina Adı",
                  labelStyle: TextStyle(
                      fontFamily: "pass", fontSize: 16, color: Colors.black),
                  hintTextDirection: TextDirection.ltr,
                  hintText: "Bina Adı",
                  hintStyle: TextStyle(
                      fontFamily: "pass", fontSize: 16, color: Colors.black),
                  focusColor: AppColors.backgroundColor,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    borderSide: BorderSide(width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(width: 4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.buildingName = buildingNameController.text;
          model.yas = yasController.text;
          model.cimentoMarka = cimentoMarkaController.text;
          controller.addBuilding(model);
        },
      ),
    );
  }
}
