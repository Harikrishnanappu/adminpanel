import 'dart:convert';

// import 'package:admin_panel/src/admin/get_user_ui.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:reachout_mobile/services/repository/business_repo.dart';
// import 'package:get/get.dart';

import '../../constants/theme/colors.dart';
import '../card_manager/physical_cards.dart';
import '../login_signup/password_success.dart';
import 'admin_home.dart';
import 'create_new employ.dart';
import 'dio_services/business_get_model.dart';
import 'dio_services/dio_repo.dart';
import 'package:dio/dio.dart' as d;

import 'dio_services/getOne_business_model.dart' as b;
import 'get_user_ui.dart';
// import 'dio_services/getOne_business_model.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> with TickerProviderStateMixin {
  //AdminRepo adminRepo = AdminRepo();
  final adminrepos = AdminRepos();
  // SearchUser searchUser = SearchUser();
  late List<Business> businesslist;
  List<List<SocialMedia>> socialMediaLists = [];
  List<ProfileRating> ratingList = [];
  List<Business> filteredUsers = [];
  // late List<dio.Card> cardlist;

  List items = [];
  List<int> socialMediaCounts = [];
  late String query1;

  String dltmsg = "Are you sure you want to delete this user";
  final TextEditingController _controller = TextEditingController();
  double? ratingValue = 0;
  bool isloading = false;
  bool isbuttonBlinking = false;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    businesslist = [];
    socialMediaLists = [];
    filteredUsers = businesslist;
    query1 = "";
    filterUsers(query1);

    // getOneBusiness();

    // cardlist = [];
    getbusiness();
    super.initState();
  }

  // business get
  getbusiness({String? query}) async {
    setState(() {
      isloading = true;
    });
    d.Response? response = await adminrepos.getAllbusiness();
    try {
      if (response!.statusCode == 200) {
        var data = json.encode(response.data);
        GetBusiness result = getBusinessFromJson(data);

        businesslist = result.business;
        filterUsers(query1);
        for (Business business in businesslist) {
          List<SocialMedia> socialMediaList = [];
          List<ProfileRating> ratingList = [];

          for (Profile profile in business.users.profile) {
            socialMediaList.addAll(profile.socialMedia);
          }

          socialMediaLists.add(socialMediaList);
        }
      }
    } catch (e) {
      throw Exception(e);
    }
    setState(() {
      isloading = false;
    });
  }

  // getOneBusiness(String? bsid) async {
  //   setState(() {
  //     isloading = true;
  //   });
  //   d.Response? response = await adminRepo.getOneBusiness(bsid);
  //   try {
  //     if (response!.statusCode == 200 || response.statusCode == 201) {
  //       var datas = json.encode(response.data);
  //       b.GetOneBusiness resultt = b.getOneBusinessFromJson(datas);
  //       // socialmediaList = resultt.business.users.profile.first.socialMedia;

  //       // print(socialmediaList);
  //       setState(() {
  //         isloading = false;
  //       });
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  //   setState(() {
  //     isloading = false;
  //   });
  // }

  // deleteBusiness(bsid) async {
  //   try {
  //     d.Response? response = await adminRepo.deleteBusiness(bsid);

  //     if (response!.statusCode == 200 || response.statusCode == 201) {
  //       print("delete");
  //       // Get.off(Successfully(addedmsg: "Deleted",));
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  double calculateRating() {
    double totalrating = 0.0;
    double totalcount = 0;

    for (Business business in filteredUsers) {
      for (ProfileRating ratingData in business.users.profileRating) {
        double rating = ratingData.rating.toDouble();
        totalrating += rating;
        totalcount++;
      }
      print("total rating $totalrating");
      print("total count $totalcount ");
    }
    double avarageRating = totalcount > 0 ? totalrating / totalcount : 0.0;
    print("Avarage Rating $avarageRating");
    return avarageRating;
  }

  void filterUsers(String query) {
    List<Business> filtered = [];
    filtered.addAll(businesslist);

    final currentUserId = "clhvi0dci0003nr25uye9yuld";
    if (query.isNotEmpty) {
      List<Business> filteredSearch = [];
      filtered.forEach((user) {
        if (user.users.firstName.toLowerCase().contains(query.toLowerCase()) &&
            user.usersId != currentUserId) {
          filteredSearch.add(user);
        }
      });
      setState(() {
        filteredUsers = filteredSearch;
      });
      return;
    } else {
      final filteredUserss =
          businesslist.where((user) => user.usersId != currentUserId).toList();
      setState(() {
        filteredUsers = filteredUserss;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isloading == true
        ? Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: themecontroller.isDarkmode.isTrue
                ? Colours.darkTheme
                : Colours.lightTheme,
            // backgroundColor: Color(0xFFE9FEF8),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 105.0,
              leading: IconButton(
                  onPressed: () {
                    Get.to(AdminBusiness());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: themecontroller.isDarkmode.isTrue
                        ? Colours.lightTheme
                        : Colours.darkTheme,
                  )),
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: TextField(
                    style: themecontroller.isDarkmode.isTrue
                        ? TextStyles.textStyle2
                        : TextStyles.textStyle1,
                    onChanged: (value) => filterUsers(value),
                    decoration: InputDecoration(
                        hintText: "Search Employee",
                        // hintStyle: themecontroller.isDarkmode.isTrue
                        //     ? TextStyles.textStyle2
                        //     : TextStyles.textStyle1,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Color(0xFF545479)),
                        ),
                        contentPadding: EdgeInsets.only(left: 15),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: themecontroller.isDarkmode.isTrue
                                  ? Colours.lightTheme
                                  : Colours.darkTheme,
                            ))),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: themecontroller.isDarkmode.isTrue
                        ? Colours.lightTheme
                        : Colours.darkTheme,
                  ),
                  onPressed: () {
                    showCreate(context);
                  },
                ),
              ],
            ),
            body: businesslist.isEmpty
                ? Center(
                    child: Text(
                    "No Employees to show Add One",
                    style: TextStyle(color: Colors.grey[700]),
                  ))
                : ListView.builder(
                    itemCount: filteredUsers.length,
                    itemBuilder: (context, index) {
                      Business business = filteredUsers[index];
                      // int count = socialMediaCounts[index];
                      List<SocialMedia> socialmedialist =
                          socialMediaLists[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            // height:double.infinity,
                            // MediaQuery.of(context).size.height * 0.2,
                            // width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                                color: Color(0xFF545479),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  // getOneBusiness(businesslist[index]
                                  //     .businessId
                                  //     .toString());
                                },
                                child: ExpansionTile(
                                  leading: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          // AssetImage('assets/images/download.png'),
                                          NetworkImage(filteredUsers[index]
                                              .users
                                              .photoUrl)),
                                  title: Text(
                                      // businesslist[index].users.firstName,
                                      business.users.firstName,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white)),
                                  subtitle: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(filteredUsers[index].designation,
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: Colors.white)),

                                      RatingBar.builder(
                                          itemSize: 15,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          // initialRating: businesslist[index]
                                          //         .users
                                          //         .profileRating
                                          //         .isNotEmpty
                                          //     ? businesslist[index]
                                          //         .users
                                          //         .profileRating
                                          //         .first
                                          //         .rating
                                          //         .toDouble()
                                          //     : 0,
                                          initialRating: filteredUsers[index]
                                                  .users
                                                  .profileRating
                                                  .isNotEmpty
                                              ? filteredUsers[index]
                                                  .users
                                                  .profileRating
                                                  .first
                                                  .rating
                                                  .toDouble()
                                              : 0.0,
                                          itemCount: 5,
                                          // ratingWidget: RatingWidget(
                                          //     full: Icon(Icons.star,
                                          //         color: Colors.yellow),
                                          //     half: Icon(
                                          //       Icons.star_half,
                                          //       color: Colors.yellow,
                                          //     ),
                                          //     empty: Icon(
                                          //       Icons.star_outline,
                                          //       color: Colors.grey,
                                          //     )),
                                          itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.yellow),
                                          onRatingUpdate: (value) {
                                            setState(() {
                                              ratingValue = value;
                                            });
                                          }),
                                      // businesslist[index]
                                      //         .users
                                      //         .profileRating
                                      //         .isNotEmpty
                                      //     ? Text(businesslist[index]
                                      //         .users
                                      //         .profileRating
                                      //         .first
                                      //         .rating
                                      //         .toString())
                                      //     : Text(""),
                                      Text(filteredUsers[index].users.lastName,
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                // color: Colors.blueGrey
                                                image: DecorationImage(
                                                    image: businesslist[index]
                                                                .users
                                                                .cards
                                                                .isNotEmpty &&
                                                            businesslist[index]
                                                                    .users
                                                                    .cards
                                                                    .first
                                                                    .cardImages
                                                                    .imageUrl !=
                                                                null
                                                        ? NetworkImage(
                                                            "${filteredUsers[index].users.cards.first.cardImages.imageUrl}")
                                                        : Image.asset(
                                                                "assets/images/Rectangle197.png")
                                                            .image)),
                                            // child: Image.asset(

                                            // child: Image.network(businesslist[index]
                                            //     .users
                                            //     .cards[index]
                                            //     .cardImages
                                            //     .imageUrl),

                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    businesslist[index]
                                                            .users
                                                            .cards
                                                            .isNotEmpty
                                                        ? Row(
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    right: 10,
                                                                  ),
                                                                  child: Text(
                                                                    filteredUsers[
                                                                            index]
                                                                        .designation,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                            ],
                                                          )
                                                        : Text(""),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    businesslist[index]
                                                            .users
                                                            .cards
                                                            .isNotEmpty
                                                        ? CircleAvatar(
                                                            radius: 25,
                                                            backgroundImage:
                                                                NetworkImage(
                                                                    filteredUsers[
                                                                            index]
                                                                        .users
                                                                        .photoUrl))
                                                        : Text(""),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    businesslist[index]
                                                                .users
                                                                .cards
                                                                .isNotEmpty &&
                                                            businesslist[index]
                                                                    .users
                                                                    .cards
                                                                    .first
                                                                    .fullName !=
                                                                null
                                                        ? Text(
                                                            filteredUsers[index]
                                                                .users
                                                                .cards
                                                                .first
                                                                .fullName,
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )
                                                        : Text(""),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        // Padding(
                                                        //     padding: EdgeInsets.only(
                                                        //         top: 5, right: 80)),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            businesslist[index]
                                                                    .users
                                                                    .cards
                                                                    .isNotEmpty
                                                                ? Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            50),
                                                                    child: Text(
                                                                      "BID",
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  )
                                                                : Text(""),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 110,
                                                    ),
                                                    businesslist[index]
                                                            .users
                                                            .cards
                                                            .isNotEmpty
                                                        ? Icon(
                                                            Icons
                                                                .email_outlined,
                                                            color: Colors.white,
                                                          )
                                                        : Text(
                                                            "",
                                                          ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        child: businesslist[
                                                                        index]
                                                                    .users
                                                                    .cards
                                                                    .isNotEmpty &&
                                                                businesslist[
                                                                            index]
                                                                        .users
                                                                        .cards
                                                                        .first
                                                                        .email !=
                                                                    null
                                                            ? Text(
                                                                filteredUsers[
                                                                        index]
                                                                    .users
                                                                    .cards
                                                                    .first
                                                                    .email,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              )
                                                            : Text(""))
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 110,
                                                    ),
                                                    businesslist[index]
                                                            .users
                                                            .cards
                                                            .isNotEmpty
                                                        ? Icon(
                                                            Icons.phone,
                                                            color: Colors.white,
                                                          )
                                                        : Text(
                                                            "No card is created"),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        child: businesslist[
                                                                        index]
                                                                    .users
                                                                    .cards
                                                                    .isNotEmpty &&
                                                                businesslist[
                                                                            index]
                                                                        .users
                                                                        .cards
                                                                        .first
                                                                        .phone !=
                                                                    null
                                                            ? Text(
                                                                filteredUsers[
                                                                        index]
                                                                    .users
                                                                    .cards
                                                                    .first
                                                                    .phone,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              )
                                                            : Text(""))
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        ListView.builder(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              socialmedialist
                                                                  .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            SocialMedia
                                                                socialMedia =
                                                                socialmedialist[
                                                                    index];

                                                            return getSocialMediaIcon(
                                                                socialMedia
                                                                    .socialMediaType);
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.06,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.45,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors
                                                        .white //                   <--- border width here
                                                    ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Color(0xFF545479),
                                              ),
                                              child: const Center(
                                                child: AutoSizeText(
                                                  'View Client List',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              // items.removeAt(index);
                                              // businesslist.removeAt(index);
                                              //setState(() {});
                                            },
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.10,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors
                                                        .white //                   <--- border width here
                                                    ),
                                                shape: BoxShape.circle,
                                                color: Color(0xFF545479),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  // deleteBusiness(
                                                  //     businesslist[index].businessId);
                                                  showDelete(
                                                      context,
                                                      filteredUsers[index]
                                                          .businessId,
                                                      filteredUsers[index]
                                                          .usersId);
                                                },
                                                child: Image.asset(
                                                    'assets/icons/trashbin.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      );
                    }));
  }

  void showDelete(context, bid, uid) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 217, 206, 206),
          title: Text(
            "Are You sure you want to delete this user from business",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  // deleteBusiness(bid);
                  // updateRole(bid, uid);

                  Get.off(() => Successfully(
                        addedmsg: "Deleted",
                      ));
                },
                child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "No",
                  style: TextStyle(color: Colors.red),
                ))
          ],
        );
      },
    );
  }

  // updateRole(bid, uid) async {
  //   try {
  //     setState(() {
  //       isloading = true;
  //     });
  //     FocusScope.of(context).requestFocus(FocusNode());

  //     d.Response? response = await adminRepo.updateUserRole(uid, 'USER');

  //     if (response!.statusCode == 200 || response.statusCode == 201) {
  //       deleteBusiness(bid);
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => Successfully(
  //           addedmsg: 'Deleted',
  //         ),
  //       ));
  //       // await updateCardProfileImage();
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //     setState(() {
  //       isloading = false;
  //     });
  //   }
  // }

  void showCreate(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 217, 206, 206),
          title: Text(
            "Add an excisting user to business account or creat a new employee",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Get.off(() => GetUser());
                },
                child: Text(
                  "Add to business",
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
                onPressed: () {
                  Get.off(() => CreateNewEmploy());
                },
                child: Text(
                  "Create New",
                  style: TextStyle(color: Colors.red),
                ))
          ],
        );
      },
    );
  }

  Widget getSocialMediaIcon(String platform) {
    switch (platform) {
      case "INSTAGRAM":
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ImageIcon(
            AssetImage("assets/icons/instagram.png"),
            color: Colors.white,
          ),
        );
      case "TWITTER":
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ImageIcon(
            AssetImage("assets/icons/twitter.png"),
            color: Colors.white,
          ),
        );

      case "FACEBOOK":
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ImageIcon(
            AssetImage("assets/icons/facebook.png"),
            color: Colors.white,
          ),
        );

      case "WHATSAPP":
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ImageIcon(
            AssetImage("assets/icons/whatsapp.png"),
            color: Colors.white,
          ),
        );

      default:
        return SizedBox.shrink();
    }
  }
}
