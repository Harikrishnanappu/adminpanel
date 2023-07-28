// // To parse this JSON data, do
// //
// //     final createAdmin = createAdminFromJson(jsonString);

// import 'dart:convert';

// CreateAdmin createAdminFromJson(String str) =>
//     CreateAdmin.fromJson(json.decode(str));

// String createAdminToJson(CreateAdmin data) => json.encode(data.toJson());

// class CreateAdmin {
//   CreateAdmin({
//     required this.admins,
//     required this.message,
//   });

//   List<Admin> admins;
//   String message;

//   factory CreateAdmin.fromJson(Map<String, dynamic> json) => CreateAdmin(
//         admins: List<Admin>.from(json["admins"].map((x) => Admin.fromJson(x))),
//         message: json["message"],
//       );

//   Map<String, dynamic> toJson() => {
//         "admins": List<dynamic>.from(admins.map((x) => x.toJson())),
//         "message": message,
//       };
// }

// class Admin {
//   Admin({
//     required this.adminId,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.usersId,
//     required this.users,
//   });

//   String adminId;
//   DateTime createdAt;
//   DateTime updatedAt;
//   String usersId;
//   Users users;

//   factory Admin.fromJson(Map<String, dynamic> json) => Admin(
//         adminId: json["adminId"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         usersId: json["usersId"],
//         users: Users.fromJson(json["users"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "adminId": adminId,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "usersId": usersId,
//         "users": users.toJson(),
//       };
// }

// class Users {
//   Users({
//     required this.firstName,
//     required this.lastName,
//     required this.email,
//     required this.phone,
//     required this.photoUrl,
//     required this.logoUrl,
//     required this.role,
//   });

//   String firstName;
//   String lastName;
//   String email;
//   String phone;
//   String photoUrl;
//   String logoUrl;
//   String role;

//   factory Users.fromJson(Map<String, dynamic> json) => Users(
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//         email: json["email"],
//         phone: json["phone"],
//         photoUrl: json["photoUrl"],
//         logoUrl: json["logoUrl"],
//         role: json["role"],
//       );

//   Map<String, dynamic> toJson() => {
//         "firstName": firstName,
//         "lastName": lastName,
//         "email": email,
//         "phone": phone,
//         "photoUrl": photoUrl,
//         "logoUrl": logoUrl,
//         "role": role,
//       };
// }

// To parse this JSON data, do
//
//     final createemployee = createemployeeFromJson(jsonString);

// To parse this JSON data, do
//
//     final createemployee = createemployeeFromJson(jsonString);

// To parse this JSON data, do
//
//     final createemployee = createemployeeFromJson(jsonString);

// =================================================================

// import 'dart:convert';

// Createemployee createemployeeFromJson(String str) =>
//     Createemployee.fromJson(json.decode(str));

// String createemployeeToJson(Createemployee data) => json.encode(data.toJson());

// class Createemployee {
//   Createemployee({
//     required this.users,
//   });

//   List<User> users;

//   factory Createemployee.fromJson(Map<String, dynamic> json) => Createemployee(
//         users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "users": List<dynamic>.from(users.map((x) => x.toJson())),
//       };
// }

// class User {
//   User({
//     required this.usersId,
//     required this.firstName,
//     required this.lastName,
//     required this.role,
//     required this.email,
//     required this.phone,
//     required this.logoUrl,
//     required this.photoUrl,
//     required this.createdAt,
//     required this.updatedAt,
//     this.businessId,
//     required this.accountType,
//     required this.count,
//   });

//   String usersId;
//   String firstName;
//   String lastName;
//   String role;
//   String email;
//   String phone;
//   String logoUrl;
//   String photoUrl;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic businessId;
//   String accountType;
//   Map<String, int> count;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         usersId: json["usersId"],
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//         role: json["role"],
//         email: json["email"],
//         phone: json["phone"],
//         logoUrl: json["logoUrl"],
//         photoUrl: json["photoUrl"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         businessId: json["businessId"],
//         accountType: json["accountType"],
//         count:
//             Map.from(json["_count"]).map((k, v) => MapEntry<String, int>(k, v)),
//       );

//   Map<String, dynamic> toJson() => {
//         "usersId": usersId,
//         "firstName": firstName,
//         "lastName": lastName,
//         "role": role,
//         "email": email,
//         "phone": phone,
//         "logoUrl": logoUrl,
//         "photoUrl": photoUrl,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "businessId": businessId,
//         "accountType": accountType,
//         "_count":
//             Map.from(count).map((k, v) => MapEntry<String, dynamic>(k, v)),
//       };
// }
// ======================
// To parse this JSON data, do
//
//     final createemployee = createemployeeFromJson(jsonString);

// To parse this JSON data, do
//
//     final createemployee = createemployeeFromJson(jsonString);

// To parse this JSON data, do
//
//     final createemployee = createemployeeFromJson(jsonString);

// import 'dart:convert';

// Createemployee createemployeeFromJson(String str) => Createemployee.fromJson(json.decode(str));

// String createemployeeToJson(Createemployee data) => json.encode(data.toJson());

// class Createemployee {
//     List<User> users;

//     Createemployee({
//         required this.users,
//     });

//     factory Createemployee.fromJson(Map<String, dynamic> json) => Createemployee(
//         users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "users": List<dynamic>.from(users.map((x) => x.toJson())),
//     };
// }

// class User {
//     String usersId;
//     String firstName;
//     String lastName;
//     String role;
//     String email;
//     String phone;
//     dynamic logoUrl;
//     String photoUrl;
//     String designation;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic businessId;
//     String accountType;
//     Map<String, int> count;

//     User({
//         required this.usersId,
//         required this.firstName,
//         required this.lastName,
//         required this.role,
//         required this.email,
//         required this.phone,
//         this.logoUrl,
//         required this.photoUrl,
//         required this.designation,
//         required this.createdAt,
//         required this.updatedAt,
//         this.businessId,
//         required this.accountType,
//         required this.count,
//     });

//     factory User.fromJson(Map<String, dynamic> json) => User(
//         usersId: json["usersId"],
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//         role: json["role"],
//         email: json["email"],
//         phone: json["phone"],
//         logoUrl: json["logoUrl"],
//         photoUrl: json["photoUrl"],
//         designation: json["designation"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         businessId: json["businessId"],
//         accountType: json["accountType"],
//         count: Map.from(json["_count"]).map((k, v) => MapEntry<String, int>(k, v)),
//     );

//     Map<String, dynamic> toJson() => {
//         "usersId": usersId,
//         "firstName": firstName,
//         "lastName": lastName,
//         "role": role,
//         "email": email,
//         "phone": phone,
//         "logoUrl": logoUrl,
//         "photoUrl": photoUrl,
//         "designation": designation,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "businessId": businessId,
//         "accountType": accountType,
//         "_count": Map.from(count).map((k, v) => MapEntry<String, dynamic>(k, v)),
//     };
// }

import 'dart:convert';

Createemployee createemployeeFromJson(String str) =>
    Createemployee.fromJson(json.decode(str));

String userModelToJson(Createemployee data) => json.encode(data.toJson());

class Createemployee {
  List<User> users;

  Createemployee({
    required this.users,
  });

  factory Createemployee.fromJson(Map<String, dynamic> json) => Createemployee(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}

class User {
  String? usersId;
  String? firstName;
  String? lastName;
  String? role;
  String? email;
  String? phone;
  String? logoUrl;
  String? photoUrl;
  String? designation;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic businessId;
  String? accountType;
  Map<String, int> count;

  User({
    this.usersId,
    this.firstName,
    this.lastName,
    this.role,
    this.email,
    this.phone,
    this.logoUrl,
    this.photoUrl,
    this.designation,
    this.createdAt,
    this.updatedAt,
    this.businessId,
    this.accountType,
    required this.count,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        usersId: json["usersId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        role: json["role"],
        email: json["email"],
        phone: json["phone"],
        logoUrl: json["logoUrl"],
        photoUrl: json["photoUrl"],
        designation: json["designation"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        businessId: json["businessId"],
        accountType: json["accountType"],
        count:
            Map.from(json["_count"]).map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "usersId": usersId,
        "firstName": firstName,
        "lastName": lastName,
        "role": role,
        "email": email,
        "phone": phone,
        "logoUrl": logoUrl,
        "photoUrl": photoUrl,
        "designation": designation,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "businessId": businessId,
        "accountType": accountType,
        "_count":
            Map.from(count).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
