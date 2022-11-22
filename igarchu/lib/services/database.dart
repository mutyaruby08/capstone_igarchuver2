import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices{

  final String uid;
  DatabaseServices ({required this.uid});
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  Future addUserCollection(String name, String email, String password,
      String role) async{
        return await userCollection.doc(uid);

      }

}