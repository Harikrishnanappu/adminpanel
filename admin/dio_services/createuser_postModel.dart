// To parse this JSON data, do
//
//     final createnewUser = createnewUserFromJson(jsonString);

// import 'dart:convert';

// CreatenewUser createnewUserFromJson(String str) =>
//     CreatenewUser.fromJson(json.decode(str));

// String createnewUserToJson(CreatenewUser data) => json.encode(data.toJson());

// class CreatenewUser {
//   Users users;

//   CreatenewUser({
//     required this.users,
//   });

//   factory CreatenewUser.fromJson(Map<String, dynamic> json) => CreatenewUser(
//         users: Users.fromJson(json["users"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "users": users.toJson(),
//       };
// }

// class Users {
//   String firstName;
//   String lastName;
//   String photoUrl;
//   String logoUrl;
//   String role;
//   String email;
//   String phone;
//   List<dynamic> profileRating;
//   List<Card> cards;
//   List<Catalogue> catalogue;
//   List<dynamic> companyDocuments;
//   List<dynamic> profile;
//   List<dynamic> scannedCards;
//   List<dynamic> callReminders;
//   List<GalleryImage> galleryImages;
//   List<dynamic> videoProfile;
//   String accountType;

//   Users({
//     required this.firstName,
//     required this.lastName,
//     required this.photoUrl,
//     required this.logoUrl,
//     required this.role,
//     required this.email,
//     required this.phone,
//     required this.profileRating,
//     required this.cards,
//     required this.catalogue,
//     required this.companyDocuments,
//     required this.profile,
//     required this.scannedCards,
//     required this.callReminders,
//     required this.galleryImages,
//     required this.videoProfile,
//     required this.accountType,
//   });

//   factory Users.fromJson(Map<String, dynamic> json) => Users(
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//         photoUrl: json["photoUrl"],
//         logoUrl: json["logoUrl"],
//         role: json["role"],
//         email: json["email"],
//         phone: json["phone"],
//         profileRating: List<dynamic>.from(json["profileRating"].map((x) => x)),
//         cards: List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
//         catalogue: List<Catalogue>.from(
//             json["catalogue"].map((x) => Catalogue.fromJson(x))),
//         companyDocuments:
//             List<dynamic>.from(json["companyDocuments"].map((x) => x)),
//         profile: List<dynamic>.from(json["profile"].map((x) => x)),
//         scannedCards: List<dynamic>.from(json["scannedCards"].map((x) => x)),
//         callReminders: List<dynamic>.from(json["callReminders"].map((x) => x)),
//         galleryImages: List<GalleryImage>.from(
//             json["galleryImages"].map((x) => GalleryImage.fromJson(x))),
//         videoProfile: List<dynamic>.from(json["videoProfile"].map((x) => x)),
//         accountType: json["accountType"],
//       );

//   Map<String, dynamic> toJson() => {
//         "firstName": firstName,
//         "lastName": lastName,
//         "photoUrl": photoUrl,
//         "logoUrl": logoUrl,
//         "role": role,
//         "email": email,
//         "phone": phone,
//         "profileRating": List<dynamic>.from(profileRating.map((x) => x)),
//         "cards": List<dynamic>.from(cards.map((x) => x.toJson())),
//         "catalogue": List<dynamic>.from(catalogue.map((x) => x.toJson())),
//         "companyDocuments": List<dynamic>.from(companyDocuments.map((x) => x)),
//         "profile": List<dynamic>.from(profile.map((x) => x)),
//         "scannedCards": List<dynamic>.from(scannedCards.map((x) => x)),
//         "callReminders": List<dynamic>.from(callReminders.map((x) => x)),
//         "galleryImages":
//             List<dynamic>.from(galleryImages.map((x) => x.toJson())),
//         "videoProfile": List<dynamic>.from(videoProfile.map((x) => x)),
//         "accountType": accountType,
//       };
// }

// class Card {
//   String cardId;
//   String fullName;
//   String phone;
//   String email;
//   dynamic font;
//   dynamic color;
//   dynamic website;
//   dynamic instagram;
//   dynamic whatsapp;
//   dynamic facebook;
//   dynamic twitter;
//   dynamic description;
//   dynamic address;
//   dynamic cardImageUrl;
//   dynamic designation;
//   DateTime createdAt;
//   DateTime updatedAt;
//   String backgroundImageId;
//   String cardType;
//   String usersId;
//   CardImages cardImages;

//   Card({
//     required this.cardId,
//     required this.fullName,
//     required this.phone,
//     required this.email,
//     this.font,
//     this.color,
//     this.website,
//     this.instagram,
//     this.whatsapp,
//     this.facebook,
//     this.twitter,
//     this.description,
//     this.address,
//     this.cardImageUrl,
//     this.designation,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.backgroundImageId,
//     required this.cardType,
//     required this.usersId,
//     required this.cardImages,
//   });

//   factory Card.fromJson(Map<String, dynamic> json) => Card(
//         cardId: json["cardId"],
//         fullName: json["fullName"],
//         phone: json["phone"],
//         email: json["email"],
//         font: json["font"],
//         color: json["color"],
//         website: json["website"],
//         instagram: json["instagram"],
//         whatsapp: json["whatsapp"],
//         facebook: json["facebook"],
//         twitter: json["twitter"],
//         description: json["description"],
//         address: json["address"],
//         cardImageUrl: json["cardImageUrl"],
//         designation: json["designation"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         backgroundImageId: json["backgroundImageId"],
//         cardType: json["cardType"],
//         usersId: json["usersId"],
//         cardImages: CardImages.fromJson(json["cardImages"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "cardId": cardId,
//         "fullName": fullName,
//         "phone": phone,
//         "email": email,
//         "font": font,
//         "color": color,
//         "website": website,
//         "instagram": instagram,
//         "whatsapp": whatsapp,
//         "facebook": facebook,
//         "twitter": twitter,
//         "description": description,
//         "address": address,
//         "cardImageUrl": cardImageUrl,
//         "designation": designation,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "backgroundImageId": backgroundImageId,
//         "cardType": cardType,
//         "usersId": usersId,
//         "cardImages": cardImages.toJson(),
//       };
// }

// class CardImages {
//   String imageUrl;
//   String cardImageId;

//   CardImages({
//     required this.imageUrl,
//     required this.cardImageId,
//   });

//   factory CardImages.fromJson(Map<String, dynamic> json) => CardImages(
//         imageUrl: json["imageUrl"],
//         cardImageId: json["cardImageId"],
//       );

//   Map<String, dynamic> toJson() => {
//         "imageUrl": imageUrl,
//         "cardImageId": cardImageId,
//       };
// }

// class Catalogue {
//   String catalogueId;
//   String title;
//   int price;
//   String description;
//   List<ProductDetail> productDetails;
//   DateTime createdAt;
//   DateTime updatedAt;
//   String usersId;
//   List<CatalogueImage> catalogueImages;

//   Catalogue({
//     required this.catalogueId,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.productDetails,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.usersId,
//     required this.catalogueImages,
//   });

//   factory Catalogue.fromJson(Map<String, dynamic> json) => Catalogue(
//         catalogueId: json["catalogueId"],
//         title: json["title"],
//         price: json["price"],
//         description: json["description"],
//         productDetails: List<ProductDetail>.from(
//             json["productDetails"].map((x) => ProductDetail.fromJson(x))),
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         usersId: json["usersId"],
//         catalogueImages: List<CatalogueImage>.from(
//             json["catalogueImages"].map((x) => CatalogueImage.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "catalogueId": catalogueId,
//         "title": title,
//         "price": price,
//         "description": description,
//         "productDetails":
//             List<dynamic>.from(productDetails.map((x) => x.toJson())),
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "usersId": usersId,
//         "catalogueImages":
//             List<dynamic>.from(catalogueImages.map((x) => x.toJson())),
//       };
// }

// class CatalogueImage {
//   String imageUrl;
//   String catalogueImagesId;

//   CatalogueImage({
//     required this.imageUrl,
//     required this.catalogueImagesId,
//   });

//   factory CatalogueImage.fromJson(Map<String, dynamic> json) => CatalogueImage(
//         imageUrl: json["imageUrl"],
//         catalogueImagesId: json["catalogueImagesId"],
//       );

//   Map<String, dynamic> toJson() => {
//         "imageUrl": imageUrl,
//         "catalogueImagesId": catalogueImagesId,
//       };
// }

// class ProductDetail {
//   String? key;
//   String value;
//   String displyName;

//   ProductDetail({
//     this.key,
//     required this.value,
//     required this.displyName,
//   });

//   factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
//         key: json["key"],
//         value: json["value"],
//         displyName: json["displyName"],
//       );

//   Map<String, dynamic> toJson() => {
//         "key": key,
//         "value": value,
//         "displyName": displyName,
//       };
// }

// class GalleryImage {
//   String imageUrl;
//   String galleryImagesId;

//   GalleryImage({
//     required this.imageUrl,
//     required this.galleryImagesId,
//   });

//   factory GalleryImage.fromJson(Map<String, dynamic> json) => GalleryImage(
//         imageUrl: json["imageUrl"],
//         galleryImagesId: json["galleryImagesId"],
//       );

//   Map<String, dynamic> toJson() => {
//         "imageUrl": imageUrl,
//         "galleryImagesId": galleryImagesId,
//       };
// }
// To parse this JSON data, do
//
//     final createnewUser = createnewUserFromJson(jsonString);

import 'dart:convert';

CreatenewUser createnewUserFromJson(String str) =>
    CreatenewUser.fromJson(json.decode(str));

String createnewUserToJson(CreatenewUser data) => json.encode(data.toJson());

class CreatenewUser {
  List<User> users;

  CreatenewUser({
    required this.users,
  });

  factory CreatenewUser.fromJson(Map<String, dynamic> json) => CreatenewUser(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}

class User {
  String usersId;
  String firstName;
  String lastName;
  String role;
  String email;
  String phone;
  String logoUrl;
  String photoUrl;
  String designation;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic businessId;
  String accountType;
  Map<String, int> count;

  User({
    required this.usersId,
    required this.firstName,
    required this.lastName,
    required this.role,
    required this.email,
    required this.phone,
    required this.logoUrl,
    required this.photoUrl,
    required this.designation,
    required this.createdAt,
    required this.updatedAt,
    this.businessId,
    required this.accountType,
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
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "businessId": businessId,
        "accountType": accountType,
        "_count":
            Map.from(count).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
