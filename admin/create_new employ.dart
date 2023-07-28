import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';
import 'package:velocity_x/velocity_x.dart';

import 'create_employPasswrd.dart';

class CreateNewEmploy extends StatefulWidget {
  const CreateNewEmploy({
    super.key,
  });

  @override
  State<CreateNewEmploy> createState() => _CreateNewEmployState();
}

class _CreateNewEmployState extends State<CreateNewEmploy> {
  var nameController = TextEditingController();
  var contactController = TextEditingController();
  var emailController = TextEditingController();
  var designationController = TextEditingController();
  var employIdController = TextEditingController();
  bool isbuttonEnabled = true;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    nameController.addListener(updateButtonState);
    contactController.addListener(updateButtonState);
    emailController.addListener(updateButtonState);
  }

  @override
  void dispose() {
    nameController.dispose();
    contactController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void updateButtonState() {
    setState(() {
      isbuttonEnabled = nameController.text.isNotEmpty &&
          contactController.text.isNotEmpty &&
          emailController.text.isNotEmpty;
    });
  }

  void submitform() {
    if (_formKey.currentState!.validate()) {
      Get.to(() => EmployPasswordScreen(
            name: nameController.text,
            phone: contactController.text,
            email: emailController.text,
            designation: designationController.text,
            lastName: lastName,
            role: role,
            logoUrl: logoUrl,
            photoUrl: photoUrl,
            accountType: accountType,
          ));
    }
  }

  String lastName = "s";
  String accountType = "PUBLIC";
  String role = "USER";
  String logoUrl =
      "https://contact-sharing-app-dev.s3.ap-south-1.amazonaws.com/logo/clh5riie80006vvnr7rcf9xsi.jfif";
  String photoUrl =
      "https://contact-sharing-app-dev.s3.ap-south-1.amazonaws.com/profile-pictures/clh5riie80006vvnr7rcf9xsi.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please type Employee Name";
                      }
                    },
                    controller: nameController,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                  ),
                  //   child: Text(
                  //     widget.name,
                  //     style: TextStyle(color: Colors.black, fontSize: 18),
                  //   ),
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
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please type Contact Number";
                      }
                    },
                    controller: contactController,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                  ),
                  // child: Text(
                  //   widget.phone,
                  //   style: TextStyle(color: Colors.black, fontSize: 18),
                  // ),
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
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Type the Email";
                      }
                    },
                    controller: emailController,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                  ),
                  // child: Text(widget.email,
                  //     style: TextStyle(color: Colors.black, fontSize: 18)),
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
                  child: TextFormField(
                    controller: designationController,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                  ),
                  //   // child: Text(widget.role,
                  //   //     style: TextStyle(color: Colors.black, fontSize: 18)),
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
                //   child: TextFormField(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    side: const BorderSide(
                                        color:
                                            Color.fromARGB(133, 21, 8, 37))))),
                    onPressed: () {
                      // postEmployee(profileImage);
                      // Get.to(EmployPasswordScreen());
                      // postData(widget.uid, adminId);
                      isbuttonEnabled ? submitform() : null;
                    },
                    child: const Text(
                      'NEXT',
                      style: TextStyle(color: Color.fromARGB(133, 35, 17, 58)),
                    )).box.width(100).height(45).makeCentered()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
