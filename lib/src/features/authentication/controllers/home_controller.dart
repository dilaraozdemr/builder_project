import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
   Stream<QuerySnapshot> getBuildings(){
    return FirebaseFirestore.instance.collection('buildings').snapshots();
  }
  void deleteBuilding(String id){
     FirebaseFirestore.instance.collection('buildings').doc(id).delete();
  }
  void addBuilding(String name){
     name = "Eren";
     FirebaseFirestore.instance.collection('buildings').add({
       "buildingName":name,
     });
  }
}
