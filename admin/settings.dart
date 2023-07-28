// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../theme/theme_service.dart';
// import 'home_screen.dart';
//
// class Settings extends StatefulWidget {
//   const Settings({Key? key}) : super(key: key);
//
//   @override
//   State<Settings> createState() => _SettingsState();
// }
//
// class _SettingsState extends State<Settings> {
//
//   //final controller=Get.put(HomeController());
//   var isDark=false;
//   //bool _switch=false;
//   // ThemeData _dark=ThemeData(brightness: Brightness.dark,primaryColor: Colors.white);
//   // ThemeData _light=ThemeData(brightness: Brightness.light,primaryColor: Colors.black);
//   bool _isThemeMode = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0XFFE9FEF8),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         elevation: 0,
//         backgroundColor:context.theme.backgroundColor,
//         //backgroundColor: Color(0XFFE9FEF8),
//         title: AutoSizeText(
//           'Settings',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           //mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Color(0XFF1EBEA5),
//               ),
//               padding: const EdgeInsets.only(top: 5, left: 29),
//               height: MediaQuery.of(context).size.height * 0.12,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>{});
//                     },
//                     child: Container(
//                       width: 60.0,
//                       height: 60.0,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff7c94b6),
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(50.0)),
//                         border: Border.all(
//                           color: Color(0XFFD9D9D9),
//                           width: 4.0,
//                         ),
//                       ),
//                     ),
//
//                     // CircleAvatar(
//                     //
//                     //   radius: 25,
//                     //   backgroundImage: NetworkImage(
//                     //       "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
//                     // ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.02,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15, top: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Carl Johnson",
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white)),
//                         Text("Audiologist",
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // SizedBox(
//             //   height: MediaQuery.of(context).size.height*0.01,
//             // ),
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 21, left: 25),
//               height: MediaQuery.of(context).size.height * 0.25,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Colors.blue,
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.language_outlined,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Language",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.45,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.03,
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Color(0XFFFB3D2D),
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.fingerprint,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Privacy",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.50,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.03,
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Color(0XFFA217BC),
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.dark_mode,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Dark Theme",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.34,
//                       ),
//
//                       // Switch(
//                       //     activeColor: Color(0XFF545479),
//                       //     value: isDark,
//                       //      onChanged: (state)
//                       // {
//                       //   print('print $state');
//                       //   // setState(() {
//                       //   //   _switch=_newvalue;
//                       //   // }
//                       //   // );
//                       // }),
//
//                       Switch(
//                         activeColor: Color(0XFF545479),
//                         value: ThemeService().isThemeMode,
//                         onChanged: (value)
//                         {
//                           ThemeService().switchTheme();
//                           setState(() => ThemeService().isThemeMode =!ThemeService().isThemeMode);
//                           },
//
//
//
//                         /*onChanged: (bool value) {
//                           switchTheme(value);
//                           //setState(() => this._switchval = value,);
//                           },*/
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 16, left: 30),
//               height: MediaQuery.of(context).size.height * 0.08,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Color(0XFF1EBEA5),
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.info_outline_rounded,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("About",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.51,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 16, left: 30),
//               height: MediaQuery.of(context).size.height * 0.08,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Color(0XFFFDC032),
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.message_outlined,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Help and Feedback",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.27,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 16, left: 30),
//               height: MediaQuery.of(context).size.height * 0.08,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Color(0XFF0029FF),
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.share,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Invite a Friend",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.36,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 16, left: 30),
//               height: MediaQuery.of(context).size.height * 0.08,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           color: Color(0XFF33FF00),
//                         ),
//                         // padding: const EdgeInsets.only(top: 10,left: 30),
//                         height: MediaQuery.of(context).size.height * 0.04,
//                         width: MediaQuery.of(context).size.width * 0.08,
//
//                         child: Icon(
//                           Icons.star,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Rate Us",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.47,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.01,
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: 260),
//               child: Text(
//                 'Accounts',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.01,
//             ),
//
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 16, left: 30),
//               height: MediaQuery.of(context).size.height * 0.08,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.logout,
//                         color: Color(0XFF545479),
//                         size: 25,
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Logout",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.50,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0XFFDDE8E8),
//               ),
//               padding: const EdgeInsets.only(top: 16, left: 30),
//               height: MediaQuery.of(context).size.height * 0.08,
//               width: MediaQuery.of(context).size.width * 0.99,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.person,
//                         color: Color(0XFF545479),
//                         size: 25,
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.07,
//                       ),
//                       Text("Switch Accounts",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.32,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 20,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
// /*      bottomNavigationBar:
//       Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0XFFD0D5DB), Colors.white.withOpacity(0.0)],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//             stops: [0.0, 1.1],
//             tileMode: TileMode.clamp,
//           ),
//         ),
//         child: BottomAppBar(
//           elevation: 0,
//           color: Colors.transparent,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => HomeScreen()));
//                   },
//                   icon: Icon(
//                     Icons.home_outlined,
//                     color: Color(0XFF545479),
//                     size: 32,
//                   )),
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.qr_code_2_sharp,
//                     color: Color(0XFF545479),
//                     size: 32,
//                   )),
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.settings_outlined,
//                     color: Color(0XFF545479),
//                     size: 32,
//                   )),
//             ],
//           ),
//         ),
//       ),*/
//     );
//   }
//
// }
//
//
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/theme/theme_service.dart';
import '../language/language_home.dart';
import 'admin_bottom_navigation.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  //final controller=Get.put(HomeController());
  var isDark=false;
  //bool _switch=false;
  // ThemeData _dark=ThemeData(brightness: Brightness.dark,primaryColor: Colors.white);
  // ThemeData _light=ThemeData(brightness: Brightness.light,primaryColor: Colors.black);
  bool _switchval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      //Color(0XFFE9FEF8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0XFFE9FEF8),
        title: AutoSizeText(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFF1EBEA5),
              ),
              padding: const EdgeInsets.only(top: 5, left: 29),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>{});
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Color(0XFFD9D9D9),
                          width: 4.0,
                        ),
                      ),
                    ),

                    // CircleAvatar(
                    //
                    //   radius: 25,
                    //   backgroundImage: NetworkImage(
                    //       "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                    // ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Carl Johnson",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                        Text("Audiologist",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height*0.01,
            // ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFDDE8E8),
              ),
              padding: const EdgeInsets.only(top: 21, left: 25),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Language(),));
                    },
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blue,
                          ),
                          // padding: const EdgeInsets.only(top: 10,left: 30),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.08,

                          child: Icon(
                            Icons.language_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                        Text("Language",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFFFB3D2D),
                        ),
                        // padding: const EdgeInsets.only(top: 10,left: 30),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.08,

                        child: Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("Privacy",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFFA217BC),
                        ),
                        // padding: const EdgeInsets.only(top: 10,left: 30),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.08,

                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("Dark Theme",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.34,
                      ),

                      // Switch(
                      //     activeColor: Color(0XFF545479),
                      //     value: isDark,
                      //      onChanged: (state)
                      // {
                      //   print('print $state');
                      //   // setState(() {
                      //   //   _switch=_newvalue;
                      //   // }
                      //   // );
                      // }),
                      Switch(
                        activeColor: Color(0XFF545479),
                        value: ThemeService().isThemeMode,
                        onChanged: (bool value) {
                          setState(() => ThemeService().switchTheme());
                        },

                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFDDE8E8),
              ),
              padding: const EdgeInsets.only(top: 16, left: 30),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFF1EBEA5),
                        ),
                        // padding: const EdgeInsets.only(top: 10,left: 30),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.08,

                        child: Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("About",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.51,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFDDE8E8),
              ),
              padding: const EdgeInsets.only(top: 16, left: 30),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFFFDC032),
                        ),
                        // padding: const EdgeInsets.only(top: 10,left: 30),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.08,

                        child: Icon(
                          Icons.message_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("Help and Feedback",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.27,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFDDE8E8),
              ),
              padding: const EdgeInsets.only(top: 16, left: 30),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFF0029FF),
                        ),
                        // padding: const EdgeInsets.only(top: 10,left: 30),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.08,

                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("Invite a Friend",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.36,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFDDE8E8),
              ),
              padding: const EdgeInsets.only(top: 16, left: 30),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFF33FF00),
                        ),
                        // padding: const EdgeInsets.only(top: 10,left: 30),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.08,

                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("Rate Us",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.47,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text(
                'Accounts',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFDDE8E8),
              ),
              padding: const EdgeInsets.only(top: 16, left: 30),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.99,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Color(0XFF545479),
                        size: 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text("Logout",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: (){showDialog(context: context, builder: (context)=>Padding(
                padding: const EdgeInsets.symmetric(),
                child: AlertDialog(elevation: 15,
                  shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.black,style: BorderStyle.solid,width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10.0),)
                  ),
                  content:Container(
                    height: 180,
                    width: 250,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            },
                              icon: Icon(Icons.close),
                            ),
                          ],
                        ),
                        Text("Secure Your Card With A \n            Password",style: TextStyle(color: Colors.black),),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => adminBottomNavigation(),));
                                },
                                style:
                                ElevatedButton.styleFrom(
                                    elevation: 15,
                                    backgroundColor: Color(0XFFE9FEF8),
                                    fixedSize: Size(110, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    side: BorderSide(color: Colors.black, width: 2.5)
                                  //primary: Color(0XFF505073),
                                ),
                                child: Center(
                                  child: const Text('Business \n Account',
                                    style: TextStyle(fontSize: 15,color: Colors.black),
                                  ),
                                )),
                            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                            ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => adminBottomNavigation(),));
                                },
                                style:
                                ElevatedButton.styleFrom(
                                    elevation: 15,
                                    backgroundColor: Color(0XFFE9FEF8),
                                    fixedSize: Size(110, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    side: BorderSide(color: Colors.black, width: 2.5)
                                  //primary: Color(0XFF505073),
                                ),
                                child: Center(
                                  child: const Text('Admin \n Panel',
                                    style: TextStyle(fontSize: 15,color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),);
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => busBottomNavigation(),));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0XFFDDE8E8),
                ),
                padding: const EdgeInsets.only(top: 16, left: 30),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.99,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0XFF545479),
                          size: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                        Text("Switch Accounts",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.32,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(height: MediaQuery.of(context).size.height*0.09,),
          ],
        ),
      ),
      // bottomNavigationBar:
      // Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [Color(0XFFD0D5DB), Colors.white.withOpacity(0.0)],
      //       begin: Alignment.bottomCenter,
      //       end: Alignment.topCenter,
      //       stops: [0.0, 1.1],
      //       tileMode: TileMode.clamp,
      //     ),
      //   ),
      //   child: BottomAppBar(
      //     elevation: 0,
      //     color: Colors.transparent,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(
      //             onPressed: () {
      //               Navigator.of(context).push(
      //                   MaterialPageRoute(builder: (context) => HomeScreen()));
      //             },
      //             icon: Icon(
      //               Icons.home_outlined,
      //               color: Color(0XFF545479),
      //               size: 32,
      //             )),
      //         IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.qr_code_2_sharp,
      //               color: Color(0XFF545479),
      //               size: 32,
      //             )),
      //         IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.settings_outlined,
      //               color: Color(0XFF545479),
      //               size: 32,
      //             )),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
