import 'package:builder_project/src/constants/colors.dart';
import 'package:builder_project/src/features/authentication/controllers/home_controller.dart';
import 'package:builder_project/src/features/authentication/screens/home/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: controller.getBuildings(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              return ListTile(
                leading: GestureDetector(
                  onTap: ()=>
                      controller.deleteBuilding(document.id),

                    child: Icon(Icons.delete)),
                title: Text(data['buildingName']),
              );
            }).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.addBuilding("Eren");
      },),
    );
  }
}
