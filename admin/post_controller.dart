import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:reachout_mobile/services/repository/business_repo.dart';

import '../login_signup/password_success.dart';
import 'dio_services/business_model.dart';
// import 'package:get/get.dart';

class PostController extends GetxController {
  final adminRepos = AdminRepos();
  postData(uid, aid, designation) async {
    try {
      Response? response =
          await adminRepos.postAdmin(uid, aid, designation).then((value) {
        if (value!.statusCode == 200 || value.statusCode == 201) {
          Get.to(Successfully(
            addedmsg: "Added to Business",
          ));
        }
      });
      if (response!.statusCode == 200 || response.statusCode == 201) {
        CreateBusiness createBusiness = CreateBusiness.fromJson(response.data);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
