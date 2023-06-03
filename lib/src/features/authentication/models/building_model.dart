import 'package:cloud_firestore/cloud_firestore.dart';

class BuildingModel {
  String? buildingName;
  String? cimentoMarka;
  String? binaIl;
  String? binaAdres;
  int? yas;
  int? binaKat;
  String? kil;
  String? insaatDemiri;
  String? celikst;
  String? imageUrl;

  BuildingModel();

  Map<String, dynamic> toMap() {
    return {
      'buildingName': buildingName,
      'cimentoMarka': cimentoMarka,
      'yas': yas,
      'binaKat': binaKat,
      'insaatDemiri': insaatDemiri,
      'kil': kil,
      'celikst': celikst,
      'imageUrl': imageUrl,
      'binaIl': binaIl,
      'binaAdres': binaAdres,
    };
  }

  BuildingModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : buildingName = doc.data()!["buildingName"],
        cimentoMarka = doc.data()!["cimentoMarka"],
        yas = doc.data()!["yas"],
        binaKat = doc.data()!["binaKat"],
        insaatDemiri = doc.data()!["insaatDemiri"],
        kil = doc.data()!["kil"],
        celikst = doc.data()!["celikst"],
        imageUrl = doc.data()!["imageUrl"],
        binaIl = doc.data()!["binaIl"],
        binaAdres = doc.data()!["binaAdres"];
}
