import 'dart:io';

import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/features/authentication/controllers/home_controller.dart';
import 'package:builder_project/src/features/authentication/controllers/upload_image_controller.dart';
import 'package:builder_project/src/features/authentication/models/user_model.dart';
import 'package:builder_project/src/features/authentication/screens/home/add_building_controller.dart';
import 'package:builder_project/src/features/authentication/screens/home/home.dart';
import 'package:builder_project/src/features/authentication/models/building_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../constants/colors.dart';

class AuditorInfLogin extends StatefulWidget {
  final UserModel userModel;

  AuditorInfLogin({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  State<AuditorInfLogin> createState() => _AuditorInfLoginState();
}

class _AuditorInfLoginState extends State<AuditorInfLogin> {
  final buildingNameController = TextEditingController();

  final yasController = TextEditingController();

  final cimentoMarkaController = TextEditingController();

  final binaKatController = TextEditingController();

  final insaatDemiriController = TextEditingController();

  final kilController = TextEditingController();

  final celikstController = TextEditingController();

  final binaAdresController = TextEditingController();

  final binaIlController = TextEditingController();

  final controller = Get.put(HomeController());

  final imagecontroller = Get.put(ImageUploadController());

  var model = BuildingModel();

  var addBuildingController = Get.put(AddBuildingController());
  String dropDownCimento = 'Çimento';
  String dropDownCelik = 'Çelik';
  String dropDownKil = 'Kil';
  String dropDownDemir = 'Demir';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.welcomeTextColor,
        title: Text(
          "Bina Ekle",
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Obx(
                () => CircleAvatar(
                  backgroundImage: imagecontroller.imagePath.isNotEmpty
                      ? FileImage(File(imagecontroller.imagePath.toString()))
                      : null,
                  radius: 80,
                  backgroundColor: AppColors.welcomeTextColor,
                  child: imagecontroller.imagePath.isEmpty
                      ? Container(
                          child: Icon(
                            Icons.account_balance_outlined,
                            size: 100,
                            color: AppColors.backgroundColor,
                          ),
                        )
                      : SizedBox(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: buildingNameController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image(
                                  image:
                                      AssetImage(AssetConstant.buildingsIcon),
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              labelText: "Bina Adı",
                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 18,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Bina Adı",
                              hintStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              focusColor: AppColors.backgroundColor,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.welcomeTextColor
                                          .withOpacity(0.7))),
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
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: yasController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage(AssetConstant.ageIcon),
                                  width: 55,
                                  height: 55,
                                ),
                              ),
                              labelText: "Bina Yaşı",
                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Bina Yaşı",
                              hintStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              focusColor: AppColors.backgroundColor,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.welcomeTextColor
                                          .withOpacity(0.7))),
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: binaKatController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image(
                                  image: AssetImage(AssetConstant.stairsIcon),
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                              labelText: "Bina Kat",
                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Bina Kat",
                              hintStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              focusColor: AppColors.backgroundColor,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.welcomeTextColor
                                          .withOpacity(0.7))),
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
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color:  AppColors.welcomeTextColor,)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image(
                                    image: AssetImage(AssetConstant.clayIcon),
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                DropdownButton<String>(
                                  value: dropDownCimento,
                                  hint: Text("Çimento",style: TextStyle(
                                      fontFamily: "pass",
                                      fontSize: 16,
                                      color: Colors.black),),
                                  // Step 3.
                                  // Step 4.
                                  items: <String>["Çimento",'Feza', 'Seza', 'Birlik', 'Amek']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    );
                                  }).toList(),
                                  // Step 5.
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropDownCimento = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color:  AppColors.welcomeTextColor,)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image(
                                    image: AssetImage(AssetConstant.steelIcon),
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                DropdownButton<String>(
                                  value: dropDownCelik,
                                  hint: Text("Çelik",style: TextStyle(
                                      fontFamily: "pass",
                                      fontSize: 16,
                                      color: Colors.black),),
                                  // Step 3.
                                  // Step 4.
                                  items: <String>["Çelik",'Loto', 'Mana', 'Burnu', 'Talan']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    );
                                  }).toList(),
                                  // Step 5.
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropDownCelik = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color:  AppColors.welcomeTextColor,)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image(
                                    image: AssetImage(AssetConstant.brickIcon),
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                DropdownButton<String>(
                                  value: dropDownKil,
                                  hint: Text("Kil",style: TextStyle(
                                      fontFamily: "pass",
                                      fontSize: 16,
                                      color: Colors.black),),
                                  // Step 3.
                                  // Step 4.
                                  items: <String>["Kil",'Fani', 'Utah', 'Duran', 'A140']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    );
                                  }).toList(),
                                  // Step 5.
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropDownKil = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color:  AppColors.welcomeTextColor,)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image(
                                    image: AssetImage(AssetConstant.rebarIcon),
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Expanded(
                                  child: DropdownButton<String>(
                                    value: dropDownDemir,
                                    hint: Text("İnşaat Demiri",style: TextStyle(
                                        fontFamily: "pass",
                                        fontSize: 16,
                                        color: Colors.black),),
                                    // Step 3.
                                    // Step 4.
                                    items: <String>["Demir",'XC110', 'T125', 'B130', 'M60']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      );
                                    }).toList(),
                                    // Step 5.
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropDownDemir = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: binaAdresController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    image:
                                        AssetImage(AssetConstant.adressIcon)),
                              ),
                              labelText: "Bina Adresi",
                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Bina Adresi",
                              hintStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              focusColor: AppColors.backgroundColor,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.welcomeTextColor
                                          .withOpacity(0.7))),
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
                                borderSide: BorderSide(
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: binaIlController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    image:
                                        AssetImage(AssetConstant.provinceIcon)),
                              ),
                              labelText: "Bina İl",
                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Bina İl",
                              hintStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              focusColor: AppColors.backgroundColor,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.welcomeTextColor
                                          .withOpacity(0.7))),
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
                                borderSide: BorderSide(
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: addBuildingController.isDurableCheckBoxChecked.value,
                            onChanged: (value) =>
                                addBuildingController.changeAuditorStatus(),
                          ),
                          Text(
                            "Bina Sağlam",
                            style: TextStyle(
                              fontFamily: "pass",
                              fontSize: 20,
                              fontWeight: addBuildingController.isDurableCheckBoxChecked.value ? FontWeight.w600 : FontWeight.w100,
                              color: addBuildingController.isDurableCheckBoxChecked.value ? Colors.deepPurpleAccent : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Material(
                      color: AppColors.welcomeTextColor.withOpacity(0.8),
                      shadowColor: AppColors.welcomeTextColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child: InkWell(
                        onTap: () {
                          imagecontroller.getImage(ImageSource.gallery);
                        },
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Galeriden Seç",
                                  style: TextStyle(
                                      color: AppColors.backgroundColor,
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Material(
                      color: AppColors.welcomeTextColor.withOpacity(0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child: InkWell(
                        onTap: () {
                          imagecontroller.getImage(ImageSource.camera);
                        },
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Kameradan Çek",
                                  style: TextStyle(
                                      color: AppColors.backgroundColor,
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: AppColors.welcomeTextColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        child: InkWell(
                          onTap: () async {
                            model.userId = widget.userModel.id ?? "";
                            model.buildingName = buildingNameController.text;
                            model.yas = int.parse(yasController.text);
                            model.cimentoMarka = dropDownCimento;
                            model.celikst = dropDownCelik;
                            model.binaKat = int.parse(binaKatController.text);
                            model.insaatDemiri = dropDownDemir;
                            model.kil = dropDownKil;
                            model.binaAdres = binaAdresController.text;
                            model.binaIl = binaIlController.text;
                            model.isDurable = addBuildingController.isDurableCheckBoxChecked.value;
                            final response = await imagecontroller
                                .uploadImage(imagecontroller.imagePath.value);
                            model.imageUrl = response;
                            controller.addBuilding(model);
                            imagecontroller.imagePath.value = "";
                            addBuildingController.isDurableCheckBoxChecked.value =false;
                            Get.to(() => HomeScreen(
                                  userModel: widget.userModel,
                                ));
                          },
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kaydet",
                                style: TextStyle(
                                    color: AppColors.backgroundColor,
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
