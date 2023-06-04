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
        title: Text(
          model.buildingName ?? "",
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontFamily: "pass",
            fontSize: 30,
          ),
        ),
        backgroundColor: AppColors.welcomeTextColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 240,
                height: 240,
                child: Image.network(model.imageUrl ?? ""),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.welcomeTextColor,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: AppColors.welcomeTextColor,
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          child: Text(
                                            "Bina Detay Bilgileri",
                                            style: TextStyle(
                                              fontFamily: "pass",
                                              fontSize: 28,
                                              color: AppColors.backgroundColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Bina Yaşı: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.yas.toString() ?? "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Kullanılan Kil: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.kil.toString() ?? "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Kullanılan İnşaat Demiri: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.insaatDemiri.toString() ??
                                                  "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Bina Katı: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.binaKat.toString() ?? "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Çelik Marka: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.celikst.toString() ?? "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffFF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Çimento Marka: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.cimentoMarka.toString() ??
                                                  "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Bina İl: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.binaIl.toString() ?? "",
                                              style: TextStyle(
                                                color:
                                                Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Bina Adres: ",
                                              style: TextStyle(
                                                color: Color(0xffFFFAF4),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              model.binaAdres.toString() ?? "",
                                              style: TextStyle(
                                                color:
                                                    Color(0xffF2B6A0),
                                                fontFamily: "pass",
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
