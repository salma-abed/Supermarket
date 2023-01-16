import 'dart:convert';

Address userFromJson(String str) => Address.fromJson(json.decode(str));

String userToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    required this.streetname,
    required this.buildingno,
    required this.floornum,
    required this.area,
  });

  String streetname;
  String buildingno;
  String floornum;
  String area;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        streetname: json["streetname"],
        buildingno: json["buildingno"],
        floornum: json["floornum"],
        area: json["area"],
      );

  Map<String, dynamic> toJson() => {
        "streetname": streetname,
        "buildingno": buildingno,
        "floornum": floornum,
        "area": area,
  
      };
}
