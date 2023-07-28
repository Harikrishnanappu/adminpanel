import 'package:dio/dio.dart' as T;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reachout_mobile/services/repository/business_repo.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:reachout_mobile/src/admin/post_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../login_signup/password_success.dart';
// import 'package:get/route_manager.dart';

class EmployPasswordScreen extends StatefulWidget {
  var name;
  var phone;
  var email;
  var lastName;
  var role;
  var logoUrl;
  var photoUrl;
  var accountType;
  var designation;
  EmployPasswordScreen(
      {super.key,
      required this.name,
      required this.phone,
      required this.email,
      required this.lastName,
      required this.role,
      required this.logoUrl,
      required this.photoUrl,
      required this.accountType,
      required this.designation});

  @override
  State<EmployPasswordScreen> createState() => _EmployPasswordScreenState();
}

class _EmployPasswordScreenState extends State<EmployPasswordScreen> {
  var controller = Get.put(PostController());
  //AdminRepo adminRepo = AdminRepo();
  final adminRepos = AdminRepos();
  String adminId = "clkgn50zc009hqszqyf0h6aj3";
  final passwordcontroller = TextEditingController();
  final confrmpasswrdcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isButtonEnabled = true;

  @override
  void initState() {
    super.initState();
    passwordcontroller.addListener(updteButtonState);
    confrmpasswrdcontroller.addListener(updteButtonState);
  }

  @override
  void dispose() {
    passwordcontroller.dispose();
    confrmpasswrdcontroller.dispose();
    super.dispose();
  }

  void updteButtonState() {
    setState(() {
      isButtonEnabled = passwordcontroller.text.isNotEmpty &&
          confrmpasswrdcontroller.text.isNotEmpty &&
          passwordcontroller.text == confrmpasswrdcontroller.text;
    });
  }

  void submitform() {
    if (_formKey.currentState!.validate()) {
      postNewData(
          widget.name,
          widget.phone,
          widget.email,
          widget.designation,
          passwordcontroller.text,
          widget.lastName,
          widget.role,
          widget.accountType,
          widget.logoUrl,
          widget.photoUrl);
    }
  }

  @override
  bool _isobscure = true;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
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
                    MediaQuery.of(context).size.width * 0.14,
                  ),
                  SizedBox(
                    width: 250,
                    child: "Create Password"
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
                child: "Creat Password"
                    .text
                    .color(Colors.grey)
                    .fontWeight(FontWeight.w400)
                    .size(15)
                    .make(),
              ),
              // 15.heightBox,
              Padding(
                padding: EdgeInsets.only(left: 54, right: 54),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please type password";
                    }
                  },
                  controller: passwordcontroller,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                ),
              ),
              40.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 54),
                child: "Confirm Password"
                    .text
                    .color(Colors.grey)
                    .fontWeight(FontWeight.w400)
                    .size(15)
                    .make(),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 54, right: 54),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please type password";
                    }
                    if (value != passwordcontroller.text) {
                      return "Passwords do not Matching";
                    }
                    return null;
                  },
                  controller: confrmpasswrdcontroller,
                  obscureText: _isobscure,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isobscure = !_isobscure;
                            });
                          },
                          icon: Icon(_isobscure
                              ? Icons.visibility
                              : Icons.visibility_off))),
                ),
              ),
              HeightBox(
                MediaQuery.of(context).size.height * 0.46,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23),
                              side: BorderSide(
                                  color: Color.fromARGB(133, 21, 8, 37))))),
                  onPressed: () {
                    // Get.to(EmployPasswordScreen());
                    isButtonEnabled ? submitform() : null;
                  },
                  child: Text(
                    'CREATE',
                    style: TextStyle(color: Color.fromARGB(133, 35, 17, 58)),
                  )).box.width(100).height(45).makeCentered()
            ],
          ),
        ),
      ),
    );
  }

  postNewData(name, phone, email, designation, password, lastName, role,
      accountType, logoUrl, photoUrl) async {
    try {
      T.Response? response = await adminRepos.postNewUser(
          name,
          phone,
          email,
          designation,
          password,
          lastName,
          role,
          accountType,
          logoUrl,
          photoUrl);
      if (response!.statusCode == 200 || response.statusCode == 201) {
        print((response.data).runtimeType);
        var userId = response.data['users']['usersId'];

        // print(userId);
        controller.postData(userId, adminId, designation);

        Get.off(Successfully(
          addedmsg: "Account Created",
        ));
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
