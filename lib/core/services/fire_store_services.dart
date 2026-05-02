import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deeon/core/services/data_base_services.dart';

class FireStoreServices extends DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    required String documentId,
  }) async {
    await firestore.collection(path).doc(documentId).set(data);
  }
}
