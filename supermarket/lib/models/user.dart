// class User {

//   String Name = '';
//   String password = '';
//   String email = '' ;

//   late int Mobile ;

//   save() {
//     //code to save to database or server
//     print('saving user data');
//     print('$Name $email $password $Mobile ');

//   }
// }

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.userid,
    // required this.type,
  });

  String name;
  String email;
  String password;
  String phone;
  String address;
  String userid;
  // String type;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        address: json["address"],
        userid: json["userid"],
        // type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "address": address,
        "userid": userid,
        // "type": type,
      };
}
