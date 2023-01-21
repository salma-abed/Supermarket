//import 'package:cloud_firestore/cloud_firestore.dart';

class usermodel {
  String id;
  final String name;
  final String email;
  final String password;
  final int number;
  final DateTime birthday;

  usermodel({
    this.id = '',
    required this.name,
    required this.email,
    required this.password,
    required this.number,
    required this.birthday,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'Name': name,
        'Email': email,
        'Password': password,
        'number': number,
        'birthday': birthday,
      };

  static usermodel fromJson(Map<String, dynamic> json) => usermodel(
        id: json['id'],
        name: json['name'],
        number: json['number'],
        password: json['password'],
        email: json['email'],
        birthday: json['birthday'],
      );
}

// import 'dart:convert';
//import 'package:cloud_firestore/cloud_firestore.dart';
// User userFromJson(String str) => User.fromJson(json.decode(str));

// String userToJson(User data) => json.encode(data.toJson());

// class User {
//   User({
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.phone,
//     required this.address,
//     required this.userid,
//     // required this.type,
//   });

//   String name;
//   String email;
//   String password;
//   String phone;
//   String address;
//   String userid;
//   // String type;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         name: json["name"],
//         email: json["email"],
//         password: json["password"],
//         phone: json["phone"],
//         address: json["address"],
//         userid: json["userid"],
//         // type: json["type"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "email": email,
//         "password": password,
//         "phone": phone,
//         "address": address,
//         "userid": userid,
//         // "type": type,
//       };
// }