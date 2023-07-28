import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_instance/get_instance.dart';
// import 'package:get/get.dart';
import 'package:get/route_manager.dart';
// import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reachout_mobile/src/admin/create_employPasswrd.dart';
import 'package:reachout_mobile/src/admin/post_controller.dart';
import 'package:reachout_mobile/src/admin/profilephto_controller.dart';
import 'package:reachout_mobile/src/card_scanner/card_view.dart';
import 'package:velocity_x/velocity_x.dart';

import 'dio_services/dio_model.dart';
import 'dio_services/dio_repo.dart';

class CreatEmployScreen extends StatefulWidget {
  final name;
  final phone;
  final email;
  final role;
  final uid;
  final adminid;
  String addedmsg = "Added To business";
  CreatEmployScreen(
      {super.key,
      required this.name,
      required this.phone,
      required this.email,
      required this.role,
      required this.uid,
      required this.adminid});

  @override
  State<CreatEmployScreen> createState() => _CreatEmployScreenState();
}

class _CreatEmployScreenState extends State<CreatEmployScreen> {
  final nameController = TextEditingController();
  final lastnameController = TextEditingController();
  final contactController = TextEditingController();
  final emailController = TextEditingController();
  final designationController = TextEditingController();
  final employIdController = TextEditingController();
  final controller = Get.put(PostController());

  // FOR POSTMETHOD
  AdminRepo adminRepo = AdminRepo();

  String adminId = "clkc9qub70079qszqq6dc290v";
  String accountType = "PUBLIC";
  String role = "USER";
  String logoUrl =
      "https://contact-sharing-app-dev.s3.ap-south-1.amazonaws.com/logo/clh5riie80006vvnr7rcf9xsi.jfif";
  String photoUrl =
      "https://contact-sharing-app-dev.s3.ap-south-1.amazonaws.com/profile-pictures/clh5riie80006vvnr7rcf9xsi.jpg";

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name;
    contactController.text = widget.phone;
    emailController.text = widget.email;
  }

  late List<User> businesslist;
  ProfilePhotoController profilePhotoController =
      Get.put(ProfilePhotoController());

  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeightBox(

              MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                      )),
                ),
                WidthBox(

                  MediaQuery.of(context).size.width * 0.09,
                ),
                SizedBox(

                  width: 250,
                  child: "Create Employee Account"
                      .text
                      .fontWeight(FontWeight.w400)
                      .size(20)
                      .color(Colors.black)
                      .make(),
                ),
              ],
            ),
            59.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: "Employee Name"
                  .text
                  .color(Colors.grey)
                  .fontWeight(FontWeight.w400)
                  .size(15)
                  .make(),
            ),
            10.heightBox,
            Padding(
              padding: EdgeInsets.only(left: 54, right: 54),
              child: TextField(
                controller: nameController,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
              ),
            ),
            30.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: "last Name"
                  .text
                  .color(Colors.grey)
                  .fontWeight(FontWeight.w400)
                  .size(15)
                  .make(),
            ),
            10.heightBox,
            Padding(
              padding: EdgeInsets.only(left: 54, right: 54),
              child: TextField(
                controller: lastnameController,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
              ),
            ),
            30.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: "Contact Number"
                  .text
                  .color(Colors.grey)
                  .fontWeight(FontWeight.w400)
                  .size(15)
                  .make(),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 54),
              child: TextField(
                controller: contactController,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
              ),
              //
            ),
            30.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: "Email"
                  .text
                  .color(Colors.grey)
                  .fontWeight(FontWeight.w400)
                  .size(15)
                  .make(),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 54),
              child: TextField(
                controller: emailController,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
              ),
            ),
            30.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: "Designation"
                  .text
                  .color(Colors.grey)
                  .fontWeight(FontWeight.w400)
                  .size(15)
                  .make(),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 54),
              child: TextField(
                controller: designationController,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
              ),
              // child: Text(widget.role,
              //     style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
            // 30.heightBox,
            // Padding(
            //   padding: const EdgeInsets.only(left: 54),
            //   child: "Employee ID"
            //       .text
            //       .color(Colors.grey)
            //       .fontWeight(FontWeight.w400)
            //       .size(15)
            //       .make(),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 54, right: 54),
            //   child: TextField(
            //     controller: employIdController,
            //     style: TextStyle(color: Colors.black),
            //     cursorColor: Colors.black,
            //   ),
            // ),
            50.heightBox,
            // Center(
            //   child: InkWell(
            //     child: Obx(

            //       () => CircleAvatar(
            //           backgroundColor: Colors.grey[350],
            //           radius: 50,
            //           backgroundImage: profilePhotoController
            //                       .isProfilePicpathSet ==
            //                   true
            //               ? FileImage(File(
            //                       profilePhotoController.profilePicPath.value))
            //                   as ImageProvider
            //               : AssetImage(
            //                   "assets/images/—Pngtree—vector edit profile icon_4101351.png")),
            //     ),
            //     onTap: () {
            //       showModalBottomSheet(
            //           context: context,
            //           builder: (context) => bottomSheet(context));
            //     },
            //   ),
            // ),
            // 5.heightBox,
            // =====================
            // Center(
            //   child: Text(
            //     'Choose Profile Photo',
            //     style: TextStyle(color: Colors.grey[600]),
            //   ),
            // ),
            40.heightBox,
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                      side: const BorderSide(
                        color: Color.fromARGB(133, 21, 8, 37),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  // post(
                  //     widget.uid, adminId, designationController.text);
                  Get.to(EmployPasswordScreen(
                      name: nameController.text,
                      phone: contactController.text,
                      email: emailController.text,
                      lastName: lastnameController.text,
                      role: role,
                      logoUrl: logoUrl,
                      photoUrl: photoUrl,
                      accountType: accountType,
                      designation: designationController.text));
                },
                child: const Text(
                  'CONFIRM',
                  style: TextStyle(
                    color: Color.fromARGB(133, 35, 17, 58),
                  ),
                )).box.width(100).height(45).makeCentered()
          ],
        ),
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: size.height * 0.2,
      margin: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          "Choose Profile Photo"
              .text
              .size(20)
              .color(Colors.black)
              .fontWeight(FontWeight.w500)
              .make(),
          60.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Column(
                  children: [
                    Icon(
                      Icons.image,
                      color: Colors.black,
                      size: 60,
                    ),
                    "Gallery".text.color(Colors.black).make(),
                  ],
                ),
                onTap: () {
                  // pickPhoto();
                  // takephoto(ImageSource.gallery);
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Icon(
                      Icons.camera,
                      size: 60,
                    ),
                    "Camera".text.color(Colors.black).make()
                  ],
                ),
                onTap: () {
                  //  pickPhoto();
                  // takephoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  // takephoto(ImageSource source) async {
  //   try {
  //     final pickedImage =
  //         await imagePicker.pickImage(source: source, imageQuality: 100);
  //     pickedFile = File(pickedImage!.path);
  //     profilePhotoController.setProfileImagePath(pickedFile!.path);
  //     final imagetemp = File(pickedImage.path);
  //     setState(() => profileImage = imagetemp);
  //     return imagetemp;
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
  // ===========================================================================
  // postData(uid, aid) async {
  //   try {
  //     Response? response = await adminRepo
  //         .postAdmin(uid, aid)
  //         .then((value) => Get.to(Successfully(
  //               addedmsg: "Added to Business",
  //             )));
  //     if (response!.statusCode == 200) {
  //       CreateBusiness createBusiness = CreateBusiness.fromJson(response.data);
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  // postEmployee(File? profileImage) async {
  //   try {
  //     d.Response response = AdminRepo().postAdmin(
  //         firstName!, phone!, email!, role!, profileImage!) as d.Response;
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       Createemployee createemployee = Createemployee.fromJson(response.data);
  //       profileImage = null;
  //       return createemployee;
  //     }
  //   } catch (ex) {
  //     throw Exception();
  //   }
  // }

  // Future<void> pickPhoto() async {
  //   final image = await takephoto(ImageSource.camera);
  //   if (image == null) {
  //     final result = postEmployee(profileImage);
  //     setState(() => businesslist.add(result));
  //   } else {
  //     return;
  //   }
  // }
}