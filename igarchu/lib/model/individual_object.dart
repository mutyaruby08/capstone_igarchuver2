import 'package:cloud_firestore/cloud_firestore.dart';

class IndividualUserObject{
  String id = '';
  String address= '';
  String number= '';
  String email= '';

  IndividualUserObject({
    this.id='',
    required this.address,
    required this.number,
    required this.email,
  });

  Map<String, dynamic> toJson() =>{
    'id': id,
    'address': address,
    'contact number': number,
    'email address': email,
  };

  static IndividualUserObject fromJson(Map<String, dynamic> json) => 
  IndividualUserObject(
    address: json['address'],
    number: json['contact number'],
    email: json['email address'] 
    );

}