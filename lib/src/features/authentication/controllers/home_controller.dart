import 'package:builder_project/src/features/authentication/screens/home/model/building_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
   Stream<QuerySnapshot> getBuildings(){
    return FirebaseFirestore.instance.collection('buildings').snapshots();
  }
  void deleteBuilding(String id){
     FirebaseFirestore.instance.collection('buildings').doc(id).delete();
  }
  void addBuilding(BuildingModel model) {

    FirebaseFirestore.instance.collection('buildings').add({
      "buildingName": model.buildingName,
      "yas": model.yas,
      "cimentoMarka": model.cimentoMarka,
    });
  }
}
