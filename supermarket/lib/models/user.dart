import 'package:cloud_firestore/cloud_firestore.dart';

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