import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//import 'package:two_one_nov_project/models/booking.dart';
//import 'package:two_one_nov_project/models/medical.dart';
import 'package:dapur_malaysia/models/user.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference personal_Info = Firestore.instance.collection('personal_info');

  Future<void> updateUserData(String name, String email, String password) async {
    return await personal_Info.document(uid).setData({
      'name': name,
      'email': email,
      'password': password,
    });
  }
  Future<void> notFirstTime() async {
    return await personal_Info.document(uid).updateData({
      'first': false,
    });
  }

  // user data from snapshots
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      email: snapshot.data['email'],
      password: snapshot.data['password'],
    );
  }
}