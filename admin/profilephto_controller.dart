import 'package:get/get.dart';

class ProfilePhotoController extends GetxController {
  var isProfilePicpathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImagePath(String path) {
    profilePicPath.value = path;
    isProfilePicpathSet.value = true;
  }
}
