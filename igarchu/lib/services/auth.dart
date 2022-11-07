// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:igarchu/model/user.dart';
import 'package:igarchu/model/user_object.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  MyUser? _userFromFirebase(User? user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<MyUser?> get user {
    //return _auth.authStateChanges().map((User? user) => _userFromFirebase(user));
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future<void> addUserCollection(String fullname, String email, String password,
    String role, String uid) async {
    CollectionReference users = firestore.collection('users');
    String uid = _auth.currentUser!.uid.toString();
    UserObject newUser = UserObject(
        id: uid, fullname: fullname, email: email, role: role, password: password);
    Map<String, dynamic> newUserData = newUser.toJson();
    await users.doc(uid).set(newUserData);
    await addOrgInfoCollection(uid);
    await addIndivInfoCollection(uid);
    return;
  } 

  Future<void> addOrgInfoCollection(String id) async {
    CollectionReference users = firestore.collection('users');
    String id = getUID();
    users.doc(id).collection('OrgInfo').doc(id).set({
      'id': id,
    });
    return;
  }

  Future<void> addIndivInfoCollection(String id) async {
    CollectionReference users = firestore.collection('users');
    String id = getUID();
    users.doc(id).collection('IndivInfo').doc(id).set({
      'id': id,
    });
    return;
  }

  String getUID() {
    String uid = _auth.currentUser!.uid;
    return uid.toString();
  }

  Future<void> addIndivField(
      String address,
      String number,
      String email) async {
    CollectionReference users = firestore.collection('users');
    var userId = getUID();
    users.doc(userId).collection('IndivInfo').doc(userId).update({
      //'id': FieldValue.arrayUnion([userId]),
    'address': address,
    'contact number': number,
    'email address': email,
    });
  }

  Future<void> addOrgField(
      String orgname,
      String address,
      String number,
      String email) async {
    CollectionReference users = firestore.collection('users');
    var userId = getUID();
    users.doc(userId).collection('OrgInfo').doc(userId).update({
      //'id': FieldValue.arrayUnion([userId]),
    'orgname': orgname,
    'address': address,
    'contact number': number,
    'email address': email,
    });
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password
  Future loginWithEmailAndPword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
// sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register with email & password
  Future registerWithEmailAndPword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
