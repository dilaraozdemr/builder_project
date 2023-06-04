import 'package:builder_project/src/features/authentication/models/building_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
   RxString query  = "".obs;
   Stream<QuerySnapshot> getBuildings(String userId){
    return FirebaseFirestore.instance.collection('buildings').where("userId",isEqualTo:userId ).snapshots();
  }
  Stream<QuerySnapshot> getAllBuildings(){
    return FirebaseFirestore.instance.collection('buildings').snapshots();
  }

  void deleteBuilding(String id){
     FirebaseFirestore.instance.collection('buildings').doc(id).delete();
  }
  void addBuilding(BuildingModel model) {

    FirebaseFirestore.instance.collection('buildings').add({
      "userId" : model.userId,
      "buildingName": model.buildingName,
      "yas": model.yas,
      "cimentoMarka": model.cimentoMarka,
      "binaKat": model.binaKat,
      "insaatDemiri": model.insaatDemiri,
      "kil": model.kil,
      "celikst": model.celikst,
      "imageUrl" : model.imageUrl,
      "binaIl" : model.binaIl,
      "binaAdres": model.binaAdres,
    });


  }
}
