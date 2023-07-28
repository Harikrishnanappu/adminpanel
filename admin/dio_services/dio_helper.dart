import 'dart:developer';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

import '../../login_signup/password_success.dart';

class ApiHelper {
  Dio dio = Dio();
  static const baseUrl = "http://13.233.169.209/dev/api/v1";
  Future<Response?> getQuery(String routeUrl) async {
    try {
      String url = baseUrl + routeUrl;
      Response response = await dio.get(url);
      print(response);
      return response;
    } catch (e) {
      Exception(e);
    }
  }

  Future<Response?> getQuerry(String routeurl, String bsiId) async {
    const baseUrl = "http://13.233.169.209/dev/api/v1";
    try {
      String uri = baseUrl + routeurl;
      String url = "$uri/$bsiId";
      Response response = await dio.get(url);
      print(response);
      return response;
    } catch (e) {
      Exception(e);
    }
  }

  Future<Response?> postQuery(String routeUrl, dynamic data) async {
    try {
      String url = baseUrl + routeUrl;

      Response response = await dio.post(url, data: data);
      String responseJson = jsonEncode(response.data);
      print(responseJson);
      log(responseJson);

      return response;
    } catch (ex) {
      Exception(ex);
    }
  }

  Future<Response?> deleteUser(String routeUrl, dynamic data) async {
    try {
      String url = baseUrl + routeUrl;
      String datas = url + "/${data}";
      final response = await dio.delete(datas);
      log(response.data);
      return response;
    } catch (e) {
      Exception(e);
    }
  }

  Future<Response?> postQueryy(String routeUrl, dynamic data) async {
    try {
      String url = baseUrl + routeUrl;

      Response response = await dio.post(url, data: data);
      Get.off(() => Successfully(addedmsg: "Added To business"));
      print(response.statusCode);
      log(response.data);

      // return response;
    } catch (ex) {
      Exception(ex);
      print(ex);
    }
  }
}
