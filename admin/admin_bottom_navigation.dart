import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:reachout_mobile/src/qr_scanner/qrScanner.dart';

import 'admin_home.dart';

class adminBottomNavigation extends StatefulWidget {
  const adminBottomNavigation({Key? key}) : super(key: key);

  @override
  State<adminBottomNavigation> createState() => _adminBottomNavigationState();
}

int _selectedIndex = 0;

class _adminBottomNavigationState extends State<adminBottomNavigation> {
  late String qrResult;
  late String qrdata;

  void _onItemTapped(int index) {
    if (index == 1) {
      _qrScanner();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  final screens = [
    const AdminBusiness(),
    QrScanner(qrResult: ''),
    const Settings(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    qrResult = '';
    qrdata = '';
  }

  Future _qrScanner() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      qrdata = (await scanner.scan())!;
      print(qrdata);
      setState(() {
        qrResult = qrdata;
      });
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => QrScanner(qrResult: qrdata),
      ));
    } else {
      var isGrant = await Permission.camera.request();

      if (cameraStatus.isGranted) {
        String? qrdata = await scanner.scan();
        print(qrdata);
        setState(() {
          qrResult = qrdata!;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: context.theme.backgroundColor,
        /*Color(0XFFE9FEF8),*/
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFFD0D5DB), Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.0, 1.1],
              tileMode: TileMode.clamp,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: // Colors.transparent.withOpacity(0.0),
                Color(0XFFE9FEF8),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/Home Icon.png"),
                  //Icon(Icons.home_outlined, color: Color(0XFF545479), size: 32,),
                  label: ''),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/Scanner Icon.png"),
                //Icon(Icons.qr_code_2_sharp, color: Color(0XFF545479), size: 32,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/Settings Icon.png"),
                //Icon(Icons.settings_outlined, color: Color(0XFF545479), size: 32,),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),
        ),
        //body: screens[_selectedIndex],
      ),
    );
  }
}
