import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/controllers/home_controller.dart';
import 'package:builder_project/src/features/authentication/models/user_model.dart';
import 'package:builder_project/src/features/authentication/screens/building_detail/building_detail.dart';
import 'package:builder_project/src/features/authentication/screens/home/auditor_information_login.dart';
import 'package:builder_project/src/features/authentication/models/building_model.dart';
import 'package:builder_project/src/features/authentication/screens/profile_screen/profile_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeUser extends StatefulWidget {
  HomeUser({Key? key, this.userModel}) : super(key: key);
  final UserModel? userModel;

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  final controller = Get.put(HomeController());
  var query = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Get.to(AuditorInfLogin(
                      userModel: widget.userModel!,
                    )),
                    child: Material(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                query = value;
                              });
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  color: AppColors.welcomeTextColor),
                              labelText: "Ara",
                              labelStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              hintTextDirection: TextDirection.ltr,
                              hintText: "Ara",
                              hintStyle: TextStyle(
                                  fontFamily: "pass",
                                  fontSize: 16,
                                  color: Colors.black),
                              focusColor: AppColors.backgroundColor,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(18),
                                ),
                                borderSide: BorderSide(width: 3),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Material(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(100),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () => Get.to(() => ProfileScreen(
                            userModel: widget.userModel!,
                          )),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Lottie.asset(AssetConstant.userLottie),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: StreamBuilder<QuerySnapshot>(
                stream: controller.getAllBuildings(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.deepPurpleAccent,
                      ),
                    );
                  }
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var docId = snapshot.data!.docs[index].reference.id;
                        var buildingModel = BuildingModel.fromDocumentSnapshot(
                            snapshot.data!.docs[index]
                                as DocumentSnapshot<Map<String, dynamic>>);
                        if (buildingModel.buildingName
                            .toString()
                            .contains(query)) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() =>
                                  BuildingDetailScreen(model: buildingModel));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: Color(0xffFFFAF4),
                                shadowColor: AppColors.welcomeTextColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Column(
                                        children: [
                                          Container(
                                            width: 70,
                                            child: Text(
                                              buildingModel.buildingName ?? "",
                                              style: TextStyle(
                                                fontFamily: "pass",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    AppColors.welcomeTextColor,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 70,
                                            child: Text(
                                              "Bina İl: ${buildingModel.binaIl ?? ""}",
                                              style: TextStyle(
                                                fontFamily: "pass",
                                                fontSize: 13,
                                                color:
                                                    AppColors.welcomeTextColor,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 70,
                                            child: Text(
                                              "Bina Yaşı: ${buildingModel.yas ?? ""}",
                                              style: TextStyle(
                                                fontFamily: "pass",
                                                fontSize: 13,
                                                color:
                                                    AppColors.welcomeTextColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      CachedNetworkImage(
                                        width: 70,
                                        height: 70,
                                        imageUrl: buildingModel.imageUrl ?? "",
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
