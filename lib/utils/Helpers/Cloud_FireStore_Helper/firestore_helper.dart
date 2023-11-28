import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFireStoreHelper {
  CloudFireStoreHelper._();

  static final CloudFireStoreHelper cloudFireStoreHelper =
      CloudFireStoreHelper._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addStudent({required Map<String, dynamic> data}) async {
    await firestore.collection("student").doc("${data['grid']}").set(data);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> fetchStudent() {
    return firestore.collection("student").snapshots();
  }
}
