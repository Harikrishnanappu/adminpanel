import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:reachout_mobile/services/repository/business_repo.dart';
import 'package:reachout_mobile/src/admin/create_new%20employ.dart';
import '../login_signup/password_success.dart';
import 'admin_panel.dart';
import 'create_employ screen.dart';
import 'dio_services/business_model.dart';
import 'dio_services/dio_model.dart';
import 'dio_services/dio_repo.dart';

class GetUser extends StatefulWidget {
  const GetUser({super.key});

  @override
  State<GetUser> createState() => _GetUserState();
}

class _GetUserState extends State<GetUser> {
  String adminId = "clhvi0dci0003nr25uye9yuld";
  // String usersId = "clgvtsd4q000ah1nrbxjfb6ol";
  late Dio _dio;
  bool isLoading = false;

  AdminRepo adminRepo = AdminRepo();
  final adminrepos = AdminRepos();
  // SearchUser searchUser = SearchUser();
  List<User> userlist = [];
  var oneuserlist;
  bool isloading = false;
  @override
  void initState() {
    userlist;
    getusers();
    _dio = Dio();
    super.initState();
  }

  getusers({String? query}) async {
    setState(() {
      isloading = true;
    });
    Response? response = await adminRepo.getAllUser();
    try {
      if (response!.statusCode == 200) {
        var data = json.encode(response.data);
        Createemployee result = createemployeeFromJson(data);
        userlist = result.users;
      }
    } catch (e) {
      throw Exception(e);
    }
    setState(() {
      isloading = false;
    });
  }

  postData(uid, aid, designation) async {
    try {
      Response? response = await adminrepos
          .postAdmin(uid, aid, designation)
          .then((value) => Get.to(Successfully(
                addedmsg: "Added to business",
              )));
      if (response!.statusCode == 200) {
        CreateBusiness createBusiness = CreateBusiness.fromJson(response.data);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return isloading == true
        ? Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: Color(0XFFE9FEF8),
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Color(0XFFE9FEF8),
              title: Padding(
                padding: EdgeInsets.only(top: 5),
                child: SizedBox(

                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black)),
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: "Search user...",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    Get.to(AdminPanel());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ),
            body: Padding(
              padding: EdgeInsets.only(top: 15),
              child: ListView.builder(
                itemCount: userlist.length,
                itemBuilder: (context, index) {
                  oneuserlist = userlist[index];
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(
                        userlist[index].firstName.toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        userlist[index].lastName.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: CircleAvatar(
                        radius: 27,
                        backgroundImage:
                            NetworkImage(userlist[index].photoUrl.toString()),
                      ),
                      trailing: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0XFFE9FEF8)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(23),
                                      side: BorderSide(
                                          color: Color.fromARGB(
                                              133, 21, 8, 37))))),
                          onPressed: () {
                            print(userlist[index].role);

                            alreadyBusiness(
                              index,
                              userlist[index].usersId,
                              userlist[index].role,
                            );
                          },
                          child: const Text(
                            "Add to business",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  );
                },
              ),
            ),
          );
  }

  businessConfirm(
    name,
    phone,
    email,
    role,
    uid,
  ) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 217, 206, 206),
            title: Text("Add $name to Business Account"),
            actions: [
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    // postData(uid, adminId);
                    Get.off(
                      CreatEmployScreen(
                      name: name,
                      phone: phone,
                      email: email,
                      role: role,
                      uid: uid,
                      adminid: adminId,
                    ),
                   
                    );
                    print(name);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  alreadyBusiness(inx, usid, userrole) async {
    try {
      print(usid.toString());

      if (userrole != null && userrole == "BUSINESS") {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Color.fromARGB(255, 217, 206, 206),
                title: Text("This user already have a business account "),
                actions: [
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              );
            });
      } else {
        businessConfirm(userlist[inx].firstName, userlist[inx].phone,
            userlist[inx].email, userlist[inx].role, userlist[inx].usersId);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}