

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? fullName;
  String? email;
  String? phoneNo;
  String? id;
  bool? isAuditor;
  String? auditorId;

  UserModel();

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'phoneNo': phoneNo,
      'id': id,
      'isAuditor': isAuditor,
      'auditorId': auditorId,
    };
  }

  UserModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : fullName = doc.data()!["fullName"],
        email = doc.data()!["email"],
        phoneNo = doc.data()!["phoneNo"],
        id = doc.data()!["id"],
        isAuditor = doc.data()!["isAuditor"],
        auditorId=doc.data()!["auditorId"];
}
