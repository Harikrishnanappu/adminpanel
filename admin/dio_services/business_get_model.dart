// import 'dart:convert';

// GetBusiness getBusinessFromJson(String str) =>
//     GetBusiness.fromJson(json.decode(str));

// String getBusinessToJson(GetBusiness data) => json.encode(data.toJson());

// class GetBusiness {
//   List<Business> business;
//   String message;

//   GetBusiness({
//     required this.business,
//     required this.message,
//   });

//   factory GetBusiness.fromJson(Map<String, dynamic> json) => GetBusiness(
//         business: List<Business>.from(
//             json["business"].map((x) => Business.fromJson(x))),
//         message: json["message"],
//       );

//   Map<String, dynamic> toJson() => {
//         "business": List<dynamic>.from(business.map((x) => x.toJson())),
//         "message": message,
//       };
// }

// class Business {
//   String businessId;
//   DateTime createdAt;
//   DateTime updatedAt;
//   String usersId;
//   String designation;
//   String adminId;
//   Users users;

//   Business({
//     required this.businessId,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.usersId,
//     required this.designation,
//     required this.adminId,
//     required this.users,
//   });

//   factory Business.fromJson(Map<String, dynamic> json) => Business(
//         businessId: json["businessId"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         usersId: json["usersId"],
//         designation: json["designation"],
//         adminId: json["adminId"],
//         users: Users.fromJson(json["users"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "businessId": businessId,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "usersId": usersId,
//         "designation": designation,
//         "adminId": adminId,
//         "users": users.toJson(),
//       };
// }

// class Users {
//   String usersId;
//   String firstName;
//   String lastName;
//   String photoUrl;
//   String logoUrl;
//   String role;
//   String email;
//   String phone;
//   List<ProfileRating> profileRating;
//   List<Card> cards;
//   List<dynamic> catalogue;
//   List<dynamic> companyDocuments;
//   List<dynamic> profile;
//   List<dynamic> scannedCards;
//   List<dynamic> callReminders;
//   List<dynamic> galleryImages;
//   List<dynamic> videoProfile;
//   String accountType;

//   Users({
//     required this.usersId,
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
//         usersId: json["usersId"],
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//         photoUrl: json["photoUrl"],
//         logoUrl: json["logoUrl"],
//         role: json["role"],
//         email: json["email"],
//         phone: json["phone"],
//         profileRating: List<ProfileRating>.from(
//             json["profileRating"].map((x) => ProfileRating.fromJson(x))),
//         cards: List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
//         catalogue: List<dynamic>.from(json["catalogue"].map((x) => x)),
//         companyDocuments:
//             List<dynamic>.from(json["companyDocuments"].map((x) => x)),
//         profile: List<dynamic>.from(json["profile"].map((x) => x)),
//         scannedCards: List<dynamic>.from(json["scannedCards"].map((x) => x)),
//         callReminders: List<dynamic>.from(json["callReminders"].map((x) => x)),
//         galleryImages: List<dynamic>.from(json["galleryImages"].map((x) => x)),
//         videoProfile: List<dynamic>.from(json["videoProfile"].map((x) => x)),
//         accountType: json["accountType"],
//       );

//   Map<String, dynamic> toJson() => {
//         "usersId": usersId,
//         "firstName": firstName,
//         "lastName": lastName,
//         "photoUrl": photoUrl,
//         "logoUrl": logoUrl,
//         "role": role,
//         "email": email,
//         "phone": phone,
//         "profileRating":
//             List<dynamic>.from(profileRating.map((x) => x.toJson())),
//         "cards": List<dynamic>.from(cards.map((x) => x.toJson())),
//         "catalogue": List<dynamic>.from(catalogue.map((x) => x)),
//         "companyDocuments": List<dynamic>.from(companyDocuments.map((x) => x)),
//         "profile": List<dynamic>.from(profile.map((x) => x)),
//         "scannedCards": List<dynamic>.from(scannedCards.map((x) => x)),
//         "callReminders": List<dynamic>.from(callReminders.map((x) => x)),
//         "galleryImages": List<dynamic>.from(galleryImages.map((x) => x)),
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

// class ProfileRating {
//   String profileRatingId;
//   int rating;

//   ProfileRating({
//     required this.profileRatingId,
//     required this.rating,
//   });

//   factory ProfileRating.fromJson(Map<String, dynamic> json) => ProfileRating(
//         profileRatingId: json["profileRatingId"],
//         rating: json["rating"],
//       );

//   Map<String, dynamic> toJson() => {
//         "profileRatingId": profileRatingId,
//         "rating": rating,
//       };
// }
// To parse this JSON data, do
//
//     final getBusiness = getBusinessFromJson(jsonString);

// To parse this JSON data, do
//
//     final getBusiness = getBusinessFromJson(jsonString);

// To parse this JSON data, do
//
//     final getBusiness = getBusinessFromJson(jsonString);

import 'dart:convert';

GetBusiness getBusinessFromJson(String str) =>
    GetBusiness.fromJson(json.decode(str));

String getBusinessToJson(GetBusiness data) => json.encode(data.toJson());

class GetBusiness {
  List<Business> business;
  String message;

  GetBusiness({
    required this.business,
    required this.message,
  });

  factory GetBusiness.fromJson(Map<String, dynamic> json) => GetBusiness(
        business: List<Business>.from(
            json["business"].map((x) => Business.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "business": List<dynamic>.from(business.map((x) => x.toJson())),
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
  Users users;

  Business({
    required this.businessId,
    required this.createdAt,
    required this.updatedAt,
    required this.usersId,
    required this.designation,
    required this.adminId,
    required this.users,
  });

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        businessId: json["businessId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        usersId: json["usersId"],
        designation: json["designation"],
        adminId: json["adminId"],
        users: Users.fromJson(json["users"]),
      );

  Map<String, dynamic> toJson() => {
        "businessId": businessId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "usersId": usersId,
        "designation": designation,
        "adminId": adminId,
        "users": users.toJson(),
      };
}

class Users {
  String usersId;
  String firstName;
  String lastName;
  String photoUrl;
  dynamic logoUrl;
  String role;
  String email;
  String phone;
  List<ProfileRating> profileRating;
  List<Card> cards;
  List<dynamic> catalogue;
  List<dynamic> companyDocuments;
  List<Profile> profile;
  List<dynamic> scannedCards;
  List<dynamic> callReminders;
  List<dynamic> galleryImages;
  List<dynamic> videoProfile;
  String accountType;

  Users({
    required this.usersId,
    required this.firstName,
    required this.lastName,
    required this.photoUrl,
    this.logoUrl,
    required this.role,
    required this.email,
    required this.phone,
    required this.profileRating,
    required this.cards,
    required this.catalogue,
    required this.companyDocuments,
    required this.profile,
    required this.scannedCards,
    required this.callReminders,
    required this.galleryImages,
    required this.videoProfile,
    required this.accountType,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        usersId: json["usersId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        photoUrl: json["photoUrl"],
        logoUrl: json["logoUrl"],
        role: json["role"],
        email: json["email"],
        phone: json["phone"],
        profileRating: List<ProfileRating>.from(
            json["profileRating"].map((x) => ProfileRating.fromJson(x))),
        cards: List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
        catalogue: List<dynamic>.from(json["catalogue"].map((x) => x)),
        companyDocuments:
            List<dynamic>.from(json["companyDocuments"].map((x) => x)),
        profile:
            List<Profile>.from(json["profile"].map((x) => Profile.fromJson(x))),
        scannedCards: List<dynamic>.from(json["scannedCards"].map((x) => x)),
        callReminders: List<dynamic>.from(json["callReminders"].map((x) => x)),
        galleryImages: List<dynamic>.from(json["galleryImages"].map((x) => x)),
        videoProfile: List<dynamic>.from(json["videoProfile"].map((x) => x)),
        accountType: json["accountType"],
      );

  Map<String, dynamic> toJson() => {
        "usersId": usersId,
        "firstName": firstName,
        "lastName": lastName,
        "photoUrl": photoUrl,
        "logoUrl": logoUrl,
        "role": role,
        "email": email,
        "phone": phone,
        "profileRating":
            List<dynamic>.from(profileRating.map((x) => x.toJson())),
        "cards": List<dynamic>.from(cards.map((x) => x.toJson())),
        "catalogue": List<dynamic>.from(catalogue.map((x) => x)),
        "companyDocuments": List<dynamic>.from(companyDocuments.map((x) => x)),
        "profile": List<dynamic>.from(profile.map((x) => x.toJson())),
        "scannedCards": List<dynamic>.from(scannedCards.map((x) => x)),
        "callReminders": List<dynamic>.from(callReminders.map((x) => x)),
        "galleryImages": List<dynamic>.from(galleryImages.map((x) => x)),
        "videoProfile": List<dynamic>.from(videoProfile.map((x) => x)),
        "accountType": accountType,
      };
}

class Card {
  String cardId;
  String fullName;
  String phone;
  String email;
  dynamic font;
  dynamic color;
  dynamic website;
  dynamic instagram;
  dynamic whatsapp;
  dynamic facebook;
  dynamic twitter;
  dynamic description;
  dynamic address;
  dynamic cardImageUrl;
  dynamic designation;
  dynamic logoUrl;
  dynamic photoUrl;
  DateTime createdAt;
  DateTime updatedAt;
  String backgroundImageId;
  String cardType;
  String usersId;
  CardImages cardImages;

  Card({
    required this.cardId,
    required this.fullName,
    required this.phone,
    required this.email,
    this.font,
    this.color,
    this.website,
    this.instagram,
    this.whatsapp,
    this.facebook,
    this.twitter,
    this.description,
    this.address,
    this.cardImageUrl,
    this.designation,
    this.logoUrl,
    this.photoUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.backgroundImageId,
    required this.cardType,
    required this.usersId,
    required this.cardImages,
  });

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        cardId: json["cardId"],
        fullName: json["fullName"],
        phone: json["phone"],
        email: json["email"],
        font: json["font"],
        color: json["color"],
        website: json["website"],
        instagram: json["instagram"],
        whatsapp: json["whatsapp"],
        facebook: json["facebook"],
        twitter: json["twitter"],
        description: json["description"],
        address: json["address"],
        cardImageUrl: json["cardImageUrl"],
        designation: json["designation"],
        logoUrl: json["logoUrl"],
        photoUrl: json["photoUrl"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        backgroundImageId: json["backgroundImageId"],
        cardType: json["cardType"],
        usersId: json["usersId"],
        cardImages: CardImages.fromJson(json["cardImages"]),
      );

  Map<String, dynamic> toJson() => {
        "cardId": cardId,
        "fullName": fullName,
        "phone": phone,
        "email": email,
        "font": font,
        "color": color,
        "website": website,
        "instagram": instagram,
        "whatsapp": whatsapp,
        "facebook": facebook,
        "twitter": twitter,
        "description": description,
        "address": address,
        "cardImageUrl": cardImageUrl,
        "designation": designation,
        "logoUrl": logoUrl,
        "photoUrl": photoUrl,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "backgroundImageId": backgroundImageId,
        "cardType": cardType,
        "usersId": usersId,
        "cardImages": cardImages.toJson(),
      };
}

class CardImages {
  String imageUrl;
  String cardImageId;

  CardImages({
    required this.imageUrl,
    required this.cardImageId,
  });

  factory CardImages.fromJson(Map<String, dynamic> json) => CardImages(
        imageUrl: json["imageUrl"],
        cardImageId: json["cardImageId"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "cardImageId": cardImageId,
      };
}

class Profile {
  String profileId;
  String firstName;
  String lastName;
  String alternateEmail;
  String alternatePhone;
  DateTime createdAt;
  DateTime updatedAt;
  String usersId;
  String professionsDetailsId;
  String personalDetailsId;
  Professions professions;
  PersonalDetails personalDetails;
  List<Education> education;
  List<SocialMedia> socialMedia;

  Profile({
    required this.profileId,
    required this.firstName,
    required this.lastName,
    required this.alternateEmail,
    required this.alternatePhone,
    required this.createdAt,
    required this.updatedAt,
    required this.usersId,
    required this.professionsDetailsId,
    required this.personalDetailsId,
    required this.professions,
    required this.personalDetails,
    required this.education,
    required this.socialMedia,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        profileId: json["profileId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        alternateEmail: json["alternateEmail"],
        alternatePhone: json["alternatePhone"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        usersId: json["usersId"],
        professionsDetailsId: json["professionsDetailsId"],
        personalDetailsId: json["personalDetailsId"],
        professions: Professions.fromJson(json["professions"]),
        personalDetails: PersonalDetails.fromJson(json["personalDetails"]),
        education: List<Education>.from(
            json["education"].map((x) => Education.fromJson(x))),
        socialMedia: List<SocialMedia>.from(
            json["socialMedia"].map((x) => SocialMedia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "profileId": profileId,
        "firstName": firstName,
        "lastName": lastName,
        "alternateEmail": alternateEmail,
        "alternatePhone": alternatePhone,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "usersId": usersId,
        "professionsDetailsId": professionsDetailsId,
        "personalDetailsId": personalDetailsId,
        "professions": professions.toJson(),
        "personalDetails": personalDetails.toJson(),
        "education": List<dynamic>.from(education.map((x) => x.toJson())),
        "socialMedia": List<dynamic>.from(socialMedia.map((x) => x.toJson())),
      };
}

class Education {
  String educationId;
  String durationFrom;
  String durationTo;
  String course;
  String institute;
  String university;

  Education({
    required this.educationId,
    required this.durationFrom,
    required this.durationTo,
    required this.course,
    required this.institute,
    required this.university,
  });

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        educationId: json["educationId"],
        durationFrom: json["durationFrom"],
        durationTo: json["durationTo"],
        course: json["course"],
        institute: json["institute"],
        university: json["university"],
      );

  Map<String, dynamic> toJson() => {
        "educationId": educationId,
        "durationFrom": durationFrom,
        "durationTo": durationTo,
        "course": course,
        "institute": institute,
        "university": university,
      };
}

class PersonalDetails {
  String personalDetailsId;
  String address;
  int age;
  String bloodGroup;
  String hobbies;
  String interests;

  PersonalDetails({
    required this.personalDetailsId,
    required this.address,
    required this.age,
    required this.bloodGroup,
    required this.hobbies,
    required this.interests,
  });

  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      PersonalDetails(
        personalDetailsId: json["personalDetailsId"],
        address: json["address"],
        age: json["age"],
        bloodGroup: json["bloodGroup"],
        hobbies: json["hobbies"],
        interests: json["interests"],
      );

  Map<String, dynamic> toJson() => {
        "personalDetailsId": personalDetailsId,
        "address": address,
        "age": age,
        "bloodGroup": bloodGroup,
        "hobbies": hobbies,
        "interests": interests,
      };
}

class Professions {
  String professionId;
  String company;
  String designation;

  Professions({
    required this.professionId,
    required this.company,
    required this.designation,
  });

  factory Professions.fromJson(Map<String, dynamic> json) => Professions(
        professionId: json["professionId"],
        company: json["company"],
        designation: json["designation"],
      );

  Map<String, dynamic> toJson() => {
        "professionId": professionId,
        "company": company,
        "designation": designation,
      };
}

class SocialMedia {
  String socialMediaId;
  String socialMediaType;
  String socialMediaUrl;

  SocialMedia({
    required this.socialMediaId,
    required this.socialMediaType,
    required this.socialMediaUrl,
  });

  factory SocialMedia.fromJson(Map<String, dynamic> json) => SocialMedia(
        socialMediaId: json["socialMediaId"],
        socialMediaType: json["socialMediaType"],
        socialMediaUrl: json["socialMediaUrl"],
      );

  Map<String, dynamic> toJson() => {
        "socialMediaId": socialMediaId,
        "socialMediaType": socialMediaType,
        "socialMediaUrl": socialMediaUrl,
      };
}

class ProfileRating {
  String profileRatingId;
  int rating;

  ProfileRating({
    required this.profileRatingId,
    required this.rating,
  });

  factory ProfileRating.fromJson(Map<String, dynamic> json) => ProfileRating(
        profileRatingId: json["profileRatingId"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "profileRatingId": profileRatingId,
        "rating": rating,
      };
}
