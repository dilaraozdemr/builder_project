import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/controllers/home_controller.dart';
import 'package:builder_project/src/features/authentication/screens/home/auditor_information_login.dart';
import 'package:builder_project/src/features/authentication/screens/home/model/building_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: StreamBuilder<QuerySnapshot>(
        stream: controller.getBuildings(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                var docId = snapshot.data!.docs[index].reference.id;
                var buildingModel = BuildingModel.fromDocumentSnapshot(snapshot
                    .data!
                    .docs[index] as DocumentSnapshot<Map<String, dynamic>>);
                return ListTile(
                  leading: GestureDetector(
                      onTap: () => controller.deleteBuilding(docId),
                      child: Icon(Icons.delete)),
                  title: Text(buildingModel.buildingName ?? ""),
                  subtitle: Text(buildingModel.cimentoMarka ?? ""),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AuditorInfLogin());
        },
      ),
    );
  }
}
