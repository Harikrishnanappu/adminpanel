// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:external_app_launcher/external_app_launcher.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:flutter_swiper_view/flutter_swiper_view.dart';
// import 'package:get/get.dart';
// import 'package:reachout_mobile/src/theme/colors.dart';
//
// class HomeBusiness extends StatefulWidget {
//   const HomeBusiness({Key? key}) : super(key: key);
//
//   @override
//   State<HomeBusiness> createState() => _HomeBusinessState();
// }
//
// class _HomeBusinessState extends State<HomeBusiness> {
//   bool clr=true;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             // toolbarHeight: 60,
//             leading: Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: InkWell(onTap: (){
//                 //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(),));
//               },
//                 child: CircleAvatar(
//                   radius: 38,
//                   backgroundImage: NetworkImage(
//                       "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
//                 ),
//               ),
//             ),
//             elevation: 0,
//             backgroundColor:
//             //context.theme.backgroundColor ,
//             Color(0XFFE9FEF8),
//             actions: [
//               IconButton(
//                   onPressed: () {
//
//                     //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatScreen(),));
//                   },
//                   icon: ImageIcon(AssetImage("assets/icons/chatIcon.png"),color:Color(0XFF545479),size: 26 ,)
//
//               ),
//               IconButton(
//                   onPressed: () {
//                     //Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationPage(),));
//                   },
//                   icon: Image.asset(
//                     "assets/icons/noti.png",color: Color(0XFF545479),
//                   )),
//             ],
//           ),
//
//
//           backgroundColor:
//           //context.theme.backgroundColor,
//           Color(0XFFE9FEF8),
//           body:Column(
//             children: [
//               Center(
//                   child:
//                   Container(
//                     color: Color(0XFFE9FEF8),
//                     height: MediaQuery.of(context).size.height *0.29,
//                     width: MediaQuery.of(context).size.width *0.95,
//                     child: Swiper(
//
//                       autoplay: true,
//                       fade: 50,
//                       itemCount: imagepath.length,
//                       itemWidth:MediaQuery.of(context).size.width * 0.91,
//                       itemHeight:MediaQuery.of(context).size.height *0.28,
//                       loop: true,
//                       duration:3000 ,
//                       scrollDirection: Axis.vertical,
//                       itemBuilder: (context ,index){
//                         return  GestureDetector(
//                           onLongPress: () {
//                             showDialog(context: context,
//                                 builder: (BuildContext context){
//                                   return AlertDialog(
//                                     icon: Icon(Icons.share,color: Colors.green),
//                                     clipBehavior: Clip.none,
//                                     shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                                     content: Row(
//                                       children: [
//                                         Container(
//                                           height:MediaQuery.of(context).size.height*0.06 ,
//                                           width: MediaQuery.of(context).size.width*0.25,
//                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),border: Border.all(color: Colors.black,width: 2),
//                                           ),
//                                           child: Center(child: AutoSizeText("back",style: TextStyles.textStyle1,)),
//                                         ),
//                                         SizedBox(width: MediaQuery.of(context).size.width*0.05,),
//                                         Container(
//                                           height:MediaQuery.of(context).size.height*0.06 ,
//                                           width: MediaQuery.of(context).size.width*0.25,
//                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),border: Border.all(color: Colors.black,width: 2),
//                                           ),
//                                           child: Center(child: AutoSizeText("Share",style: TextStyles.textStyle1,)),
//                                         ),
//                                       ],
//                                     ),
//                                   );
//                                 }
//                             );},
//                           child:
//                           Container(
//                             height: 400,
//                             width: 400,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage(imagepath[index]), fit: BoxFit.cover,),
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                             child: Column(
//                               children: [
//                                 Row(mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(right: 15,top: 15),
//                                       child: InkWell(onTap: (){
//                                         //Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardQr(),));
//                                         },
//                                           child: Icon(Icons.qr_code,color: Colors.white,)),
//                                     )
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//
//                                     Padding(
//                                       padding: const EdgeInsets.only(left: 58),
//                                       child: AutoSizeText("Carl\nJohnes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white)),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 100,top: 15),
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.email_outlined,size: 20,color: Colors.white,),
//                                       SizedBox(width: MediaQuery.of(context).size.width*0.01,),
//                                       AutoSizeText("carljohnes04@gmail.com",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)
//                                     ],
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 100,top: 15),
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.call_outlined,size: 20,color: Colors.white,),
//                                       SizedBox(width: MediaQuery.of(context).size.width*0.01,),
//                                       AutoSizeText("+000123456789",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)
//                                     ],
//                                   ),
//                                 ),
//
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 45),
//                                   child: Row(
//                                     children: [
//                                       IconButton(onPressed: ()async{
//                                         await
//                                         LaunchApp.openApp(
//                                           androidPackageName: "com.instagram.android",
//
//
//                                         );
//                                       }, icon: ImageIcon(AssetImage("assets/icons/instagram.png"),color: Colors.white,)),
//                                       SizedBox(width: MediaQuery.of(context).size.width*0.03,),
//                                       IconButton(onPressed:()async{
//                                         await
//                                         LaunchApp.openApp(
//                                           androidPackageName: 'com.whatsapp',
//                                           openStore: true,
//
//                                         );
//                                       },icon:ImageIcon(AssetImage("assets/icons/whatsapp.png",),color: Colors.white,)),
//                                       SizedBox(width: MediaQuery.of(context).size.width*0.03,),
//                                       IconButton(onPressed:()async{
//                                         await
//                                         LaunchApp.openApp(
//                                           androidPackageName: "com.twitter.android",
//                                           openStore: true,
//
//                                         );
//                                       },icon: ImageIcon(AssetImage("assets/icons/twitter.png",),color: Colors.white,)),
//                                       SizedBox(width: MediaQuery.of(context).size.width*0.03,),
//                                       IconButton(onPressed:()async{
//                                         await
//                                         LaunchApp.openApp(
//                                           androidPackageName: "com.facebook.katana",
//                                           openStore: true,
//
//                                         );
//                                       },icon: ImageIcon(AssetImage("assets/icons/facebook.png"),color: Colors.white,)),
//                                       SizedBox(width: MediaQuery.of(context).size.width*0.15,),
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 15),
//                                         child: AutoSizeText("121300000000",style: TextStyle(fontSize: 11),),
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                       layout: SwiperLayout.STACK,
//                     ),
//
//
//                   )),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.01,
//               ),
//               Container(
//                   height: MediaQuery.of(context).size.height*0.53,
//                   width: MediaQuery.of(context).size.width,
//                   color:Color(0XFFE9FEF8),
//                   child: ListView(
//                     scrollDirection: Axis.vertical,
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 27,top: 25),
//                           child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left:22 ,right: 22),
//                                 child: Row(children: [
//                                   Container(
//                                     height: MediaQuery.of(context).size.height*0.17,
//                                     width: MediaQuery.of(context).size.width*0.35,
//                                     child: InkWell(
//                                       onTap: () {
//                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallManager(),));
//                                       },
//                                       child: Neumorphic(
//                                         style: NeumorphicStyle(
//                                             shape: NeumorphicShape.concave,
//                                             // depth: 15,
//                                             intensity: 15,
//                                             surfaceIntensity: 0.8,
//                                             color:
//                                             //context.theme.backgroundColor,
//                                             //shadowDarkColorEmboss:
//                                             //context.theme.backgroundColor,
//                                             Color(0XFFE9FEF8),
//                                             boxShape: NeumorphicBoxShape.roundRect(
//                                                 BorderRadius.circular(30))),
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Padding(
//                                               padding: const EdgeInsets.only(left: 15, top: 18),
//                                               child: CircleAvatar(
//                                                 radius: 23,
//                                                 backgroundColor: Colors.blue,
//                                                 child: Icon(Icons.phone_callback_outlined,
//                                                     color: Colors.black),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 16, top: 45, right: 16),
//                                               child: AutoSizeText(
//                                                 "Call Manager".tr,
//                                                 style:TextStyles.textStyle1,
//                                                 //TextStyle(
//                                                 //fontWeight: FontWeight.w700, fontSize: 13),
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//
//                                   SizedBox(width:MediaQuery.of(context).size.width*0.08 ,),
//                                   ///card scanner
//                                   Container(
//                                     height: MediaQuery.of(context).size.height*0.17,
//                                     width: MediaQuery.of(context).size.width*0.35,
//                                     child: Neumorphic(
//                                       style: NeumorphicStyle(
//                                           shape: NeumorphicShape.concave,
//                                           // depth: 15,
//                                           intensity: 15,
//                                           surfaceIntensity: 0.8,
//                                           color:
//                                           //context.theme.backgroundColor,
//                                           Color(0XFFE9FEF8),
//                                           boxShape: NeumorphicBoxShape.roundRect(
//                                               BorderRadius.circular(30))),
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.only(left: 15, top: 18),
//                                             child: CircleAvatar(
//                                               radius: 23,
//                                               backgroundColor: Colours.yellowIcon,
//                                               child: Icon(Icons.qr_code_scanner_rounded,
//                                                   color: Colors.black),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 15, top: 35, right: 15),
//                                             child: AutoSizeText(
//                                                 "Card Scanner".tr,
//                                                 style:TextStyles.textStyle1
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//
//
//                                 ],),
//                               ),
//
//
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 22,right: 22,top: 20),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       height: MediaQuery.of(context).size.height*0.17,
//                                       width: MediaQuery.of(context).size.width*0.35,
//                                       child: InkWell(onTap: (){
//                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reach(),));
//                                       },
//                                         child: Neumorphic(
//                                           style: NeumorphicStyle(
//                                               shape: NeumorphicShape.concave,
//                                               // depth: 15,
//                                               intensity: 15,
//                                               surfaceIntensity: 0.8,
//                                               color:
//                                               //context.theme.backgroundColor,
//                                               Color(0XFFE9FEF8),
//                                               boxShape: NeumorphicBoxShape.roundRect(
//                                                   BorderRadius.circular(30))),
//                                           child: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Padding(
//                                                 padding: const EdgeInsets.only(left: 15, top: 18),
//                                                 child: CircleAvatar(
//                                                   radius: 23,
//                                                   backgroundColor: Colors.blueGrey,
//                                                   child: Icon(Icons.account_tree,
//                                                       color: Colors.black),
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 16, top: 35, right: 16),
//                                                 child: AutoSizeText(
//                                                     "Reach".tr,
//                                                     style:TextStyles.textStyle1
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width:MediaQuery.of(context).size.width*0.08 ,),
//                                     ///
//                                     Container(
//                                       height: MediaQuery.of(context).size.height*0.17,
//                                       width: MediaQuery.of(context).size.width*0.35,
//                                       child: Neumorphic(
//                                         style: NeumorphicStyle(
//                                             shape: NeumorphicShape.concave,
//                                             // depth: 15,
//                                             intensity: 15,
//                                             surfaceIntensity: 0.8,
//                                             color:
//                                             //context.theme.backgroundColor,
//                                             Color(0XFFE9FEF8),
//                                             boxShape: NeumorphicBoxShape.roundRect(
//                                                 BorderRadius.circular(30))),
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Padding(
//                                               padding: const EdgeInsets.only(left: 15, top: 18),
//                                               child: CircleAvatar(
//                                                 radius: 23,
//                                                 // backgroundColor: Colours.pinkIcon,
//                                                 backgroundColor: Colours.pinkIcon,
//                                                 child: Icon(Icons.recent_actors_outlined,
//                                                     color: Colors.black),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 16, top: 35, right: 16),
//                                               child: AutoSizeText(
//                                                   "Card Manager".tr,
//                                                   style: TextStyles.textStyle1
//
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//
//                                   ],),
//                               ),
//                               SizedBox(
//                                 height: MediaQuery.of(context).size.height * 0.03,
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 22,right: 47),
//                                 child: Container(
//
//                                   height: MediaQuery.of(context).size.height*0.17,
//                                   width: MediaQuery.of(context).size.width*0.78,
//                                   child: InkWell(
//                                     onTap: () {
//                                       //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClientHome(),));
//                                     },
//                                     child: Neumorphic(
//                                       style: NeumorphicStyle(
//                                           shape: NeumorphicShape.concave,
//                                           // depth: 15,
//                                           intensity: 15,
//                                           surfaceIntensity: 0.8,
//                                           color:
//                                           //context.theme.backgroundColor,
//                                           //shadowDarkColorEmboss:
//                                           //context.theme.backgroundColor,
//                                           Color(0XFFE9FEF8),
//                                           boxShape: NeumorphicBoxShape.roundRect(
//                                               BorderRadius.circular(30))),
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.only(left: 15, top: 18),
//                                             child: CircleAvatar(
//                                                 radius: 23,
//                                                 backgroundColor: Color(0XFF78FAC6),
//                                                 child: Image.asset("assets/icons/client.png")
//                                               //Icon(Icons.phone_callback_outlined,
//                                               //  color: Colors.black),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 16, top: 35, right: 16),
//                                             child: AutoSizeText(
//                                               "Client Manager".tr,
//                                               style:TextStyles.textStyle1,
//                                               //TextStyle(
//                                               //fontWeight: FontWeight.w700, fontSize: 13),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   )
//               ),
//
//             ],
//           )
//
//
//
//       ),
//     );
//   }}

// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:flutter_swiper_view/flutter_swiper_view.dart';
// import 'package:get/get.dart';
// import 'package:reachout_mobile/src/theme/colors.dart';
//
// import '../profile.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   // @override
//   // Widget Containers(){
//   //   return Container(
//   //     height: MediaQuery.of(context).size.height*0.08,
//   //     width: MediaQuery.of(context).size.width,
//   //     decoration: BoxDecoration(
//   //       color: Color(0XFFE9FEF8)
//   //     ),
//   //     child: Row(
//   //       children: [
//   //         SizedBox(width: MediaQuery.of(context).size.width*0.04,),
//   //         CircleAvatar(
//   //           radius: 28,
//   //         ),
//   //          SizedBox(width: MediaQuery.of(context).size.width*0.60,),
//   //          IconButton(onPressed: (){}, icon: Icon(Icons.insert_comment_outlined,color: Color(0XFF545479),size: 28,)),
//   //          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/notification.png",)),
//   //
//   //       ],
//   //     ),
//   //   );
//   // }
//
//   @override
//   Widget CrdContainer() {
//     return Center(
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.25,
//         width: MediaQuery.of(context).size.width * 0.84,
//         child: Swiper(itemCount: imagepath.length,
//           itemWidth:MediaQuery.of(context).size.width * 0.84,
//           itemHeight:MediaQuery.of(context).size.height * 0.22,
//           loop: true,
//           duration: 1200,
//           scrollDirection: Axis.vertical,
//           itemBuilder: (context ,index){
//           return  GestureDetector(
//             onLongPress: () {
//               showDialog(context: context,
//                   builder: (BuildContext context){
//                 return AlertDialog(
//                   icon: Icon(Icons.share,color: Colors.green),
//                   clipBehavior: Clip.none,
//                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                  content: Row(
//                    children: [
//                      Container(
//                        height:MediaQuery.of(context).size.height*0.06 ,
//                        width: MediaQuery.of(context).size.width*0.25,
//                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),border: Border.all(color: Colors.black,width: 2),
//                        ),
//                        child: Center(child: AutoSizeText("back",style: TextStyles.textStyle1,)),
//                      ),
//                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
//                      Container(
//                        height:MediaQuery.of(context).size.height*0.06 ,
//                        width: MediaQuery.of(context).size.width*0.25,
//                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),border: Border.all(color: Colors.black,width: 2),
//                        ),
//                        child: Center(child: AutoSizeText("Share",style: TextStyles.textStyle1,)),
//                      ),
//                    ],
//                  ),
//                 );
//               }
//               );},
//             child: Container(
//               height: 400,
//               width: 400,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(imagepath[index]), fit: BoxFit.cover,),
//                 borderRadius: BorderRadius.circular(20)
//               ),
//             ),
//           );
//           },
//           layout: SwiperLayout.STACK,
//         ),
//
//         // decoration: BoxDecoration(
//         //     image: DecorationImage(
//         //        image: AssetImage("assets/images/card.png"), fit: BoxFit.cover,),
//         //     borderRadius: BorderRadius.circular(15)),
//         // child: Padding(
//         //   padding: const EdgeInsets.only(left: 10,top: 30),
//         //   child: Column(
//         //     children: [
//         //       Text("Carl\nJohnson",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white)),
//         //       Row(
//         //         children: [
//         //           Icon(Icons.email_outlined,color: Colors.white),
//         //           Text("Carl123@gmail.com",style: TextStyle(color: Colors.white),)
//         //         ],
//         //       ),
//         //       Row(
//         //         children: [
//         //           Icon(Icons.phone,color: Colors.white),
//         //           Text("123456787",style: TextStyle(color: Colors.white),)
//         //         ],
//         //       ),
//         //       Row(
//         //         children: [
//         //
//         //           Padding(
//         //             padding: const EdgeInsets.all(8.0),
//         //             child: Icon(Icons.whatsapp,color: Colors.white,),
//         //           ),
//         //           Padding(
//         //             padding: const EdgeInsets.all(8.0),
//         //             child: Icon(Icons.telegram,color: Colors.white),
//         //           ),
//         //           Padding(
//         //             padding: const EdgeInsets.all(8.0),
//         //             child: Icon(Icons.facebook,color: Colors.white),
//         //           ),
//         //
//         //         ],
//         //       )
//         //     ],
//         //   ),
//         // ),
//       ),
//     );
//   }
//
//   // @override
//   // Widget CrdContainers() {
//   //   return Center(
//   //     child: Container(
//   //       height: MediaQuery.of(context).size.height * 0.28,
//   //       width: MediaQuery.of(context).size.width * 0.88,
//   //       decoration: BoxDecoration(
//   //           color: Color(0XFFE9FEF8), borderRadius: BorderRadius.circular(15)),
//   //       child: InkWell(
//   //         onTap: () {},
//   //         child: ListView(scrollDirection: Axis.vertical, children: [
//   //           GestureFlipCard(
//   //             animationDuration: Duration(milliseconds: 300),
//   //             axis: FlipAxis.vertical,
//   //             enableController: false,
//   //             frontWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card2.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //             backWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card2.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //           ),
//   //           SizedBox(
//   //             height: MediaQuery.of(context).size.height * 0.02,
//   //           ),
//   //           GestureFlipCard(
//   //             animationDuration: Duration(milliseconds: 300),
//   //             axis: FlipAxis.vertical,
//   //             enableController: false,
//   //             frontWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card3.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //             backWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card3.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //           ),
//   //           SizedBox(
//   //             height: MediaQuery.of(context).size.height * 0.02,
//   //           ),
//   //           GestureFlipCard(
//   //             animationDuration: Duration(milliseconds: 300),
//   //             axis: FlipAxis.vertical,
//   //             enableController: false,
//   //             frontWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card4.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //             backWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card4.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //           ),
//   //           SizedBox(
//   //             height: MediaQuery.of(context).size.height * 0.02,
//   //           ),
//   //           GestureFlipCard(
//   //             animationDuration: Duration(milliseconds: 300),
//   //             axis: FlipAxis.vertical,
//   //             enableController: false,
//   //             frontWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card5.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //             backWidget: Center(
//   //               child: Image.asset(
//   //                 "assets/images/card5.png",
//   //                 fit: BoxFit.fill,
//   //                 width: MediaQuery.of(context).size.width * 0.80,
//   //                 height: MediaQuery.of(context).size.height * 0.25,
//   //               ),
//   //             ),
//   //           ),
//   //         ]),
//   //       ),
//   //     ),
//   //   );
//   // }
//
//   @override
//   Widget fileContainers() {
//     return Center(
//       child: Container(
//            height: MediaQuery.of(context).size.height * 0.45,
//            width: MediaQuery.of(context).size.width*0.88,
//           decoration: BoxDecoration(
//               color: Color(0XFFE9FEF8),
//               borderRadius: BorderRadius.circular(15)),
//           child:
//
//               Column(mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left:25 ,right: 25),
//                     child: Row(children: [
//                       Container(
//                         height: 155,
//                         width: 155,
//                         child: Neumorphic(
//                           style: NeumorphicStyle(
//                               shape: NeumorphicShape.concave,
//                               depth: 15,
//                               intensity: 15,
//                               surfaceIntensity: 0.8,
//                               color: Color(0XFFE9FEF8),
//                               boxShape: NeumorphicBoxShape.roundRect(
//                                   BorderRadius.circular(30))),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 15, top: 18),
//                                 child: CircleAvatar(
//                                   radius: 23,
//                                   backgroundColor: Colors.blue,
//                                   child: Icon(Icons.phone_callback_outlined,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 16, top: 45, right: 16),
//                                 child: AutoSizeText(
//                                   "Call Manager",
//                                   style:TextStyles.textStyle1,
//                                   //TextStyle(
//                                   //fontWeight: FontWeight.w700, fontSize: 13),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(width:MediaQuery.of(context).size.width*0.08 ,),
//                       ///card scanner
//                       Container(
//                         height: 155,
//                         width: 155,
//                         child: Neumorphic(
//                           style: NeumorphicStyle(
//                               shape: NeumorphicShape.concave,
//                               depth: 15,
//                               intensity: 15,
//                               surfaceIntensity: 0.8,
//                               color: Color(0XFFE9FEF8),
//                               boxShape: NeumorphicBoxShape.roundRect(
//                                   BorderRadius.circular(30))),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 15, top: 18),
//                                 child: CircleAvatar(
//                                   radius: 23,
//                                   backgroundColor: Colours.yellowIcon,
//                                   child: Icon(Icons.qr_code_scanner_rounded,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 15, top: 45, right: 15),
//                                 child: AutoSizeText(
//                                     "Card Scanner",
//                                     style:TextStyles.textStyle1
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//
//
//                     ],),
//                   ),
//
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
//                     child: Row(
//                       children: [
//                       Container(
//                         height: 155,
//                         width: 155,
//                         child: Neumorphic(
//                           style: NeumorphicStyle(
//                               shape: NeumorphicShape.concave,
//                               depth: 15,
//                               intensity: 15,
//                               surfaceIntensity: 0.8,
//                               color: Color(0XFFE9FEF8),
//                               boxShape: NeumorphicBoxShape.roundRect(
//                                   BorderRadius.circular(30))),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 15, top: 18),
//                                 child: CircleAvatar(
//                                   radius: 23,
//                                   backgroundColor: Colors.blueGrey,
//                                   child: Icon(Icons.account_tree,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 16, top: 45, right: 16),
//                                 child: AutoSizeText(
//                                     "Reach",
//                                     style:TextStyles.textStyle1
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                         SizedBox(width:MediaQuery.of(context).size.width*0.08 ,),
//                       ///
//                       Container(
//                         height: 155,
//                         width: 155,
//                         child: Neumorphic(
//                           style: NeumorphicStyle(
//                               shape: NeumorphicShape.concave,
//                               depth: 15,
//                               intensity: 15,
//                               surfaceIntensity: 0.8,
//                               color: Color(0XFFE9FEF8),
//                               boxShape: NeumorphicBoxShape.roundRect(
//                                   BorderRadius.circular(30))),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 15, top: 18),
//                                 child: CircleAvatar(
//                                   radius: 23,
//                                   backgroundColor: Colours.pinkIcon,
//                                   child: Icon(Icons.recent_actors_outlined,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 16, top: 45, right: 16),
//                                 child: AutoSizeText(
//                                   "Card Manager",
//                                   style: TextStyles.textStyle1
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//
//                     ],),
//                   ),
//                 ],
//               )
//               ///call manager
//
//
//              //  ///reach
//              //  Padding(
//              //    padding: const EdgeInsets.all(7.0),
//              //    child: Container(
//              //      width: 118,
//              //      child: Neumorphic(
//              //        style: NeumorphicStyle(
//              //            shape: NeumorphicShape.concave,
//              //            depth: 5,
//              //            intensity: 5,
//              //            surfaceIntensity: 5,
//              //            color: Color(0XFFE9FEF8),
//              //            boxShape: NeumorphicBoxShape.roundRect(
//              //                BorderRadius.circular(30))),
//              //        child: Column(
//              //          crossAxisAlignment: CrossAxisAlignment.start,
//              //          children: [
//              //            Padding(
//              //              padding: const EdgeInsets.only(left: 15, top: 18),
//              //              child: CircleAvatar(
//              //                backgroundColor: Colors.blueGrey,
//              //                child: Icon(Icons.recent_actors_outlined,
//              //                    color: Colors.black),
//              //              ),
//              //            ),
//              //            Padding(
//              //              padding: const EdgeInsets.only(
//              //                  left: 16, top: 45, right: 16),
//              //              child: AutoSizeText(
//              //                "Reach",
//              //                  style:TextStyles.textStyle1
//              //              ),
//              //            )
//              //          ],
//              //        ),
//              //      ),
//              //    ),
//              //  ),
//              // ///
//              //  Padding(
//              //    padding: const EdgeInsets.all(7.0),
//              //    child: Container(
//              //      width: 118,
//              //      child: Neumorphic(
//              //        style: NeumorphicStyle(
//              //            shape: NeumorphicShape.concave,
//              //            depth: 5,
//              //            intensity: 5,
//              //            surfaceIntensity: 5,
//              //            color: Color(0XFFE9FEF8),
//              //            boxShape: NeumorphicBoxShape.roundRect(
//              //                BorderRadius.circular(30))),
//              //        child: Column(
//              //          crossAxisAlignment: CrossAxisAlignment.start,
//              //          children: [
//              //            Padding(
//              //              padding: const EdgeInsets.only(left: 15, top: 18),
//              //              child: CircleAvatar(
//              //                backgroundColor: Colors.blueGrey,
//              //                child: Icon(Icons.recent_actors_outlined,
//              //                    color: Colors.black),
//              //              ),
//              //            ),
//              //            Padding(
//              //              padding: const EdgeInsets.only(
//              //                  left: 16, top: 45, right: 16),
//              //              child: AutoSizeText(
//              //                "Reach",
//              //                style: TextStyle(
//              //                    fontWeight: FontWeight.w700, fontSize: 13),
//              //              ),
//              //            )
//              //          ],
//              //        ),
//              //      ),
//              //    ),
//              //  ),
//
//
//
//           ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor:context.theme.backgroundColor,
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(onTap: (){
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(),));
//             },
//               child: CircleAvatar(
//                 radius: 28,
//                 backgroundImage: NetworkImage(
//                     "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
//               ),
//             ),
//           ),
//           elevation: 0,
//           backgroundColor: Color(0XFFE9FEF8),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.insert_comment_outlined,
//                   color: Color(0XFF545479),
//                   size: 32,
//                 )),
//             IconButton(
//                 onPressed: () {},
//                 icon: Image.asset(
//                   "assets/icons/notification.png",
//                 )),
//           ],
//         ),
//         // bottomNavigationBar: BottomAppBar(
//         //   elevation: 0,
//         //   color: Color(0XFFE9FEF8),
//         //   child: Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //     children: [
//         //       IconButton(
//         //           onPressed: () {},
//         //           icon: Icon(
//         //             Icons.home_outlined,
//         //             color: Color(0XFF545479),
//         //             size: 32,
//         //           )
//         //       ),
//         //       IconButton(
//         //           onPressed: () {},
//         //           icon: Icon(
//         //             Icons.qr_code_2_sharp,
//         //             color: Color(0XFF545479),
//         //             size: 32,
//         //           )
//         //       ),
//         //       IconButton(
//         //           onPressed: () {},
//         //           icon: Icon(
//         //             Icons.settings_outlined,
//         //             color: Color(0XFF545479),
//         //             size: 32,
//         //           )
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         //backgroundColor: Color(0XFFE9FEF8),
//         body: Column(
//           children: [
//             // Containers(),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.04,
//             ),
//             CrdContainer(),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.03,
//             ),
//             // CrdContainers(),
//
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.03,
//             ),
//             fileContainers()
//           ],
//         ),
//       ),
//     );
//   }
// }
// // class Choice{
// //   final String title;
// //   final IconData icon;
// //   final Color color;
// //
// //   const Choice({required this.title,required this.icon,required this.color});
// //
// // }
// //  const List<Choice> choices = const<Choice>[
// //    const Choice(title: "Call Manager", icon:Icons.phone_callback_outlined,color:Colors.blueGrey )
// //  ];

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';

import '../../constants/theme/colors.dart';
import '../../constants/widget/cards.dart';
import 'admin_panel.dart';
import 'notification.dart';




class AdminBusiness extends StatefulWidget {
  const AdminBusiness({Key? key}) : super(key: key);

  @override
  State<AdminBusiness> createState() => _AdminBusinessState();
}

class _AdminBusinessState extends State<AdminBusiness> {
  bool clr=true;
  // @override
  // Widget Containers(){
  //   return Container(
  //     height: MediaQuery.of(context).size.height*0.08,
  //     width: MediaQuery.of(context).size.width,
  //     decoration: BoxDecoration(
  //       color: Color(0XFFE9FEF8)
  //     ),
  //     child: Row(
  //       children: [
  //         SizedBox(width: MediaQuery.of(context).size.width*0.04,),
  //         CircleAvatar(
  //           radius: 28,
  //         ),
  //          SizedBox(width: MediaQuery.of(context).size.width*0.60,),
  //          IconButton(onPressed: (){}, icon: Icon(Icons.insert_comment_outlined,color: Color(0XFF545479),size: 28,)),
  //          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/notification.png",)),
  //
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget CrdContainer() {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.84,
        child: Swiper(itemCount: imagepath.length,
          itemWidth:MediaQuery.of(context).size.width * 0.84,
          itemHeight:MediaQuery.of(context).size.height * 0.22,
          loop: true,
          duration: 1200,
          scrollDirection: Axis.vertical,
          itemBuilder: (context ,index){
            return  GestureDetector(
              onLongPress: () {
                showDialog(context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        icon: Icon(Icons.share,color: Colors.green),
                        clipBehavior: Clip.none,
                        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        content: Row(
                          children: [
                            Container(
                              height:MediaQuery.of(context).size.height*0.06 ,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),border: Border.all(color: Colors.black,width: 2),
                              ),
                              child: Center(child: AutoSizeText("back",style: TextStyles.textStyle1,)),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                            Container(
                              height:MediaQuery.of(context).size.height*0.06 ,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),border: Border.all(color: Colors.black,width: 2),
                              ),
                              child: Center(child: AutoSizeText("Share",style: TextStyles.textStyle1,)),
                            ),
                          ],
                        ),
                      );
                    }
                );},
              child:
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagepath[index]), fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15,top: 15),
                          child: Icon(Icons.qr_code,color: Colors.white,),
                        )
                      ],
                    ),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: AutoSizeText("Carl\nJohnes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.email_outlined,size: 20,color: Colors.white,),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          AutoSizeText("carljohnes04@gmail.com",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          Icon(Icons.call_outlined,size: 20,color: Colors.white,),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          AutoSizeText("+000123456789",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/icons/instagram.png"))),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          IconButton(onPressed:(){},icon:Icon(Icons.chat,size: 20,color: Colors.white,)),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          IconButton(onPressed:(){},icon: ImageIcon(AssetImage("assets/icons/twitter.png"))),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          IconButton(onPressed:(){},icon: ImageIcon(AssetImage("assets/icons/facebook.png"))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          layout: SwiperLayout.STACK,
        ),


        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //        image: AssetImage("assets/images/card.png"), fit: BoxFit.cover,),
        //     borderRadius: BorderRadius.circular(15)),
        // child: Padding(
        //   padding: const EdgeInsets.only(left: 10,top: 30),
        //   child: Column(
        //     children: [
        //       Text("Carl\nJohnson",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white)),
        //       Row(
        //         children: [
        //           Icon(Icons.email_outlined,color: Colors.white),
        //           Text("Carl123@gmail.com",style: TextStyle(color: Colors.white),)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           Icon(Icons.phone,color: Colors.white),
        //           Text("123456787",style: TextStyle(color: Colors.white),)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Icon(Icons.whatsapp,color: Colors.white,),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Icon(Icons.telegram,color: Colors.white),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Icon(Icons.facebook,color: Colors.white),
        //           ),
        //
        //         ],
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }

  // @override
  // Widget CrdContainers() {
  //   return Center(
  //     child: Container(
  //       height: MediaQuery.of(context).size.height * 0.28,
  //       width: MediaQuery.of(context).size.width * 0.88,
  //       decoration: BoxDecoration(
  //           color: Color(0XFFE9FEF8), borderRadius: BorderRadius.circular(15)),
  //       child: InkWell(
  //         onTap: () {},
  //         child: ListView(scrollDirection: Axis.vertical, children: [
  //           GestureFlipCard(
  //             animationDuration: Duration(milliseconds: 300),
  //             axis: FlipAxis.vertical,
  //             enableController: false,
  //             frontWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card2.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //             backWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card2.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: MediaQuery.of(context).size.height * 0.02,
  //           ),
  //           GestureFlipCard(
  //             animationDuration: Duration(milliseconds: 300),
  //             axis: FlipAxis.vertical,
  //             enableController: false,
  //             frontWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card3.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //             backWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card3.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: MediaQuery.of(context).size.height * 0.02,
  //           ),
  //           GestureFlipCard(
  //             animationDuration: Duration(milliseconds: 300),
  //             axis: FlipAxis.vertical,
  //             enableController: false,
  //             frontWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card4.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //             backWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card4.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: MediaQuery.of(context).size.height * 0.02,
  //           ),
  //           GestureFlipCard(
  //             animationDuration: Duration(milliseconds: 300),
  //             axis: FlipAxis.vertical,
  //             enableController: false,
  //             frontWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card5.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //             backWidget: Center(
  //               child: Image.asset(
  //                 "assets/images/card5.png",
  //                 fit: BoxFit.fill,
  //                 width: MediaQuery.of(context).size.width * 0.80,
  //                 height: MediaQuery.of(context).size.height * 0.25,
  //               ),
  //             ),
  //           ),
  //         ]),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget fileContainers() {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:38 ,right: 25),
            child: Row(children: [
              ///card scanner
              Container(
                height: 155,
                width: 155,
                child: InkWell(
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardScanner(),));
                  },
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        // depth: 15,
                        intensity: 15,
                        surfaceIntensity: 0.8,
                        color:
                        //context.theme.backgroundColor,
                        Color(0XFFE9FEF8),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 18),
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colours.yellowIcon,
                            child: ImageIcon(
                              AssetImage("assets/icons/card scanner.png"),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 45, right: 15),
                          child: AutoSizeText(
                              "Card Scanner",
                              style:TextStyles.textStyle1
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width:MediaQuery.of(context).size.width*0.12 ,),
              ///reach
              Container(
                height: 155,
                width: 155,
                child: InkWell(onTap: (){
                 // Navigator.of(context).push(MaterialPageRoute(builder: (context) => reach(),));
                },
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        // depth: 15,
                        intensity: 15,
                        surfaceIntensity: 0.8,
                        color:
                        //context.theme.backgroundColor,
                        Color(0XFFE9FEF8),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 18),
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.blueGrey,
                            child: ImageIcon(
                              AssetImage("assets/icons/Reach.png"),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 45, right: 16),
                          child: AutoSizeText(
                              "Reach",
                              style:TextStyles.textStyle1
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),


            ],),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 38,right: 25,top: 20),
            child: Row(
              children: [
                ///call manager
                Container(
                  height: 155,
                  width: 155,
                  child: InkWell(
                    onTap: (){
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallManager(),));
                    },
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          // depth: 15,
                          intensity: 15,
                          surfaceIntensity: 0.8,
                          color:
                          //context.theme.backgroundColor,
                          //shadowDarkColorEmboss:
                          //context.theme.backgroundColor,
                          Color(0XFFE9FEF8),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.blue,
                              child: ImageIcon(
                                AssetImage("assets/icons/Call manager.png"),
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 45, right: 16),
                            child: AutoSizeText(
                              "Call Manager",
                              style:TextStyles.textStyle1,
                              //TextStyle(
                              //fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width:MediaQuery.of(context).size.width*0.12 ,),
                ///card manager
                Container(
                  height: 155,
                  width: 155,
                  child: InkWell(onTap: (){
                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardHome(),));
                  },
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          // depth: 15,
                          intensity: 15,
                          surfaceIntensity: 0.8,
                          color:
                          //context.theme.backgroundColor,
                          Color(0XFFE9FEF8),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: CircleAvatar(
                              radius: 23,
                              // backgroundColor: Colours.pinkIcon,
                              backgroundColor: Colours.pinkIcon,
                              child: ImageIcon(
                                AssetImage("assets/icons/Card Manager.png"),
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 45, right: 16),
                            child: AutoSizeText(
                                "Card Manager",
                                style: TextStyles.textStyle1

                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 38,right: 47,top: 20),
            child: Container(

              height: MediaQuery.of(context).size.height*0.17,
              width: MediaQuery.of(context).size.width*0.78,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdminPanel(),));
                },
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      // depth: 15,
                      intensity: 15,
                      surfaceIntensity: 0.8,
                      color:
                      //context.theme.backgroundColor,
                      //shadowDarkColorEmboss:
                      //context.theme.backgroundColor,
                      Color(0XFFE9FEF8),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 18),
                        child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Color(0XFF78FAC6),
                            child: Image.asset("assets/icons/client.png")
                          //Icon(Icons.phone_callback_outlined,
                          //  color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 35, right: 16),
                        child: AutoSizeText(
                          "Admin Panel".tr,
                          style:TextStyles.textStyle1,
                          //TextStyle(
                          //fontWeight: FontWeight.w700, fontSize: 13),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: InkWell(onTap: (){
             // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(),));
            },
              child: CircleAvatar(
                radius: 38,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
              ),
            ),
          ),
          elevation: 0,
          backgroundColor:
          //context.theme.backgroundColor ,
          Color(0XFFE9FEF8),
          actions: [
            IconButton(
                onPressed: () {
                 // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatList(),));
                },
                icon:Image.asset("assets/icons/Chat Icon.png")
              //Icon(Icons.insert_comment_out
              // lined, color: Color(0XFF545479), size: 32,)
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NotificationPage()));
                },
                icon: Image.asset(
                  "assets/icons/notification.png",
                )),
          ],
        ),
        // bottomNavigationBar: Container(
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
        //             onPressed: () {
        //               // Navigator.of(context).push(MaterialPageRoute(builder: (context) => QrScanner(),));
        //             },
        //             icon: Icon(
        //               Icons.qr_code_2_sharp,
        //               color: Color(0XFF545479),
        //               size: 32,
        //             )),
        //         IconButton(
        //             onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings(),));},
        //             icon: Icon(
        //               Icons.settings_outlined,
        //               color: Color(0XFF545479),
        //               size: 32,
        //             )),
        //       ],
        //     ),
        //   ),
        // ),
        // BottomAppBar(
        //   elevation: 0,
        //   color:context.theme.backgroundColor,
        //   //Color(0XFFE9FEF8),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       IconButton(
        //           onPressed: () {},
        //           icon: Icon(
        //             Icons.home_outlined,
        //             color:
        //             Color(0XFF545479),
        //             size: 32,
        //           )),
        //       IconButton(
        //           onPressed: () {},
        //           icon: Icon(
        //             Icons.qr_code_2_sharp,
        //             color: Color(0XFF545479),
        //             size: 32,
        //           )),
        //       IconButton(
        //           onPressed: () {
        //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings(),));
        //           },
        //           icon: Icon(
        //             Icons.settings_outlined,
        //             color: Color(0XFF545479),
        //             size: 32,
        //           )),
        //     ],
        //   ),
        // ),
        backgroundColor:context.theme.backgroundColor,
        // Color(0XFFE9FEF8),
        body: Column(
          children: [
            // Containers(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            // cardDesign(),
            //CrdContainer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // CrdContainers(),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.46,
              width: MediaQuery.of(context).size.width,
              color:Color(0XFFE9FEF8),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  fileContainers(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// class Choice{
//   final String title;
//   final IconData icon;
//   final Color color;
//
//   const Choice({required this.title,required this.icon,required this.color});
//
// }
//  const List<Choice> choices = const<Choice>[
//    const Choice(title: "Call Manager", icon:Icons.phone_callback_outlined,color:Colors.blueGrey )
//  ];



