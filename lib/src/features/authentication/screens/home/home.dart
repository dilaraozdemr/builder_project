import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/controllers/home_controller.dart';
import 'package:builder_project/src/features/authentication/controllers/login_controller.dart';
import 'package:builder_project/src/features/authentication/screens/building_detail/building_detail.dart';
import 'package:builder_project/src/features/authentication/screens/home/auditor_information_login.dart';
import 'package:builder_project/src/features/authentication/models/building_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());
final loginController = Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: StreamBuilder<QuerySnapshot>(
                stream: controller.getBuildings(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator(color: Colors.deepPurpleAccent,),);
                  }
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var docId = snapshot.data!.docs[index].reference.id;
                        var buildingModel = BuildingModel.fromDocumentSnapshot(snapshot
                            .data!
                            .docs[index] as DocumentSnapshot<Map<String, dynamic>>);
                        return GestureDetector(
                          onTap: (){
                            Get.to(()=> BuildingDetailScreen(model: buildingModel));
                          },
                          child: ListTile(
                            focusColor: AppColors.welcomeTextColor,
                            leading: GestureDetector(
                                onTap: () => controller.deleteBuilding(docId),
                                child: Icon(Icons.delete)),
                            title: Text(buildingModel.buildingName ?? ""),
                            subtitle: Text(buildingModel.cimentoMarka ?? ""),
                            textColor: AppColors.welcomeTextColor,
                            trailing: Container(
                              child: CachedNetworkImage(
                                imageUrl: buildingModel.imageUrl ?? "",
                                placeholder: (context, url) => CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Icon(Icons.error),
                              ),
                            )
                          ),
                        );
                      });
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              loginController.logoutUser();
            },
            child: Icon(Icons.logout),
          ),
          SizedBox(height: 23,),
          FloatingActionButton(
            onPressed: () {
              Get.to(AuditorInfLogin());
            },
            child: Icon(Icons.add),
          ),
        ],
      ),

    );
  }
}
