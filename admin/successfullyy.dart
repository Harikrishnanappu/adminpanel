import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';

import 'admin_panel.dart';

// import '../individual/home_main/ind_bottom_navigation.dart';

class Successfully extends StatefulWidget {
  String addedmsg;
  Successfully({super.key, required this.addedmsg});

  @override
  State<Successfully> createState() => _SuccessfullyState();
}

class _SuccessfullyState extends State<Successfully> {
  changeScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.off(AdminPanel());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9FEF8),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xff2dbd33),
                radius: 70,
                child: Icon(
                  Icons.done,
                  size: 80,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                widget.addedmsg,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              const Text(
                "Successfully !",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
