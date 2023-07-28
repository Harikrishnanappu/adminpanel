// To parse this JSON data, do
//
//     final createBusiness = createBusinessFromJson(jsonString);

// To parse this JSON data, do
//
//     final createBusiness = createBusinessFromJson(jsonString);

import 'dart:convert';

CreateBusiness createBusinessFromJson(String str) =>
    CreateBusiness.fromJson(json.decode(str));

String createBusinessToJson(CreateBusiness data) => json.encode(data.toJson());

class CreateBusiness {
  Business business;
  String message;

  CreateBusiness({
    required this.business,
    required this.message,
  });

  factory CreateBusiness.fromJson(Map<String, dynamic> json) => CreateBusiness(
        business: Business.fromJson(json["business"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "business": business.toJson(),
        "message": message,
      };
}

class Business {
  String businessId;
  DateTime createdAt;
  DateTime updatedAt;
  String usersId;
  String designation;
  String adminId;

  Business({
    required this.businessId,
    required this.createdAt,
    required this.updatedAt,
    required this.usersId,
    required this.designation,
    required this.adminId,
  });

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        businessId: json["businessId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        usersId: json["usersId"],
        designation: json["designation"],
        adminId: json["adminId"],
      );

  Map<String, dynamic> toJson() => {
        "businessId": businessId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "usersId": usersId,
        "designation": designation,
        "adminId": adminId,
      };
}
