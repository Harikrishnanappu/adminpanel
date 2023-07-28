import 'dart:io';

// import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:reachout_mobile/services/api.dart';

import 'dio_helper.dart';
import 'dio_model.dart';

//  current adminid future chnge
String adminId1 = "clh5r555w0001nrvv7lr1wpzr";

class AdminRepo {
  ApiHelper apiHelper = ApiHelper();
  final apiquery = ApiQuery();
  static const routeurl = "/users";
  static const routeurl1 = "/business";
  // Future<Response?> getAdminImage() async {
  //   try {
  //     Response? response = await apiHelper.getQuery(routeurl);
  //     print(response);
  //     if (response!.statusCode == 200) {
  //       return response;
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
  List<User> userlist = [];
  Future<Response?> getAllUser() async {
    try {
      Response? response = await apiHelper.getQuery(routeurl);
      print(response);
      if (response!.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // to get business users
  Future<Response?> getAllbusiness() async {
    try {
      Response? response = await apiHelper.getQuery(routeurl1);
      print(response);
      if (response!.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response?> getOneBusiness(usId) async {
    try {
      Response? response = await apiHelper.getQuerry(routeurl1, usId);
      print(response);
      if (response!.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response?> postAdmin(
      String usersId, String adminId, String designation) async {
    try {
      Map<String, dynamic> data = {
        "usersId": usersId,
        "adminId": adminId,
        "designation": designation
      };
      // FormData formData = FormData.fromMap(data);
      Response? response = await apiHelper.postQueryy(routeurl1, data);

      if (response!.statusCode == 201 || response.statusCode == 200) {
        print(response.statusCode);
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response?> deleteBusiness(String businessId) async {
    try {
      Map<String, dynamic> data = {
        "businessId": businessId,
      };
      Response? response = await apiHelper.deleteUser(routeurl1, businessId);
      //.then((value) => Get.to(AdminPanel()));
      if (response!.statusCode == 200 || response.statusCode == 201) {
        print("======================deleted============");
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
  // Future<Response?> updateUserRole  ([ role,uid]) async {
  //   try {

  //     // MultipartFile? imageFile;
  //     // var image= File(imageUrl!.path);
  //     // imageFile= await MultipartFile.fromFile(image.path,filename: "rishu.jpg");

  //     Map<String, dynamic> data = {
  //     "role": role,
  //     //"profileImage" :imageFile,

  //     };
  //     //print(userID);

  //     Map<String, String> headers = {
  //       'Content-Type': 'application/json',

  //     };

  //     FormData formData = FormData.fromMap(data);

  //     Response? response = await apiHelper.(
  //        routeurl +"/$uid", headers, formData, 'updateCard');
  //     print(response!.data);
  //     print(response.statusMessage);
  //     print(response.statusCode);

  //     if(response != null && (response.statusCode == 303 || response.statusCode == 401 )){

  //       // Map<String, String> headers2 = {};
  //       // headers2 = {
  //       //   'Content-Type': 'application/json',
  //       // };

  //       // //print(data);

  //       // Response? response = await apiQuery.putQuery(
  //       //     Constants.userapi+"/$userID", headers, formData, 'updateUser');

  //       // return response;
  //     }
  //     else{
  //       return response;
  //     }
  //   } catch (exception) {
  //     print(exception.toString());
  //     return null;
  //   }
  // }

  Future<Response?> updateUserRole(String userId, String newrole) async {
    Dio dio = Dio();
    try {
      final String url = 'http://13.232.99.199/dev/api/v1$routeurl/$userId';
      FormData formData = FormData.fromMap({"role": newrole});
      Response response = await dio.put(url, data: formData);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response?> postNewUser(
    String firstName,
    String phone,
    String email,
    String designation,
    String password,
    String lastName,
    String role,
    String accountType,
    String logoUrl,
    String photoUrl,
  ) async {
    try {
      Map<String, dynamic> data = {
        "firstName": firstName,
        "phone": phone,
        "email": email,
        "designation": designation,
        "password": password,
        "lastName": lastName,
        "role": role,
        "accountType": accountType,
        "logoUrl": logoUrl,
        "photoUrl": photoUrl
      };
      FormData formData = FormData.fromMap(data);
      Response? response = await apiHelper.postQuery(routeurl, formData);

      if (response?.statusCode == 201 || response?.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception();
    }
  }
}
