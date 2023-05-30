import 'package:cloud_firestore/cloud_firestore.dart';

class BuildingModel {
  String? buildingName;
  String? cimentoMarka;
  String? yas;
  BuildingModel();
  Map<String, dynamic> toMap() {
    return {
      'buildingName': buildingName,
      'cimentoMarka': cimentoMarka,
      'yas': yas,
    };
  }
  BuildingModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : buildingName = doc.data()!["buildingName"],
        cimentoMarka = doc.data()!["cimentoMarka"],
        yas = doc.data()!["yas"];
}