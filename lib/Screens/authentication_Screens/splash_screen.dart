// ignore_for_file: avoid_unnecessary_containers, use_super_parameters, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zeedra_ecom/Screens/authentication_Screens/welcome_screen.dart';
import '../../Utilities/application_Constsnts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      // Get.offAll(()=>UserMainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationConstants.applicationSecondaryColor,
      appBar: AppBar(
        backgroundColor: ApplicationConstants.applicationSecondaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: Get.width,
              alignment: Alignment.center,
              child:
                  Lottie.asset('assets/images/Animation - 1709044129107.json'),
            )),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: Get.width,
              alignment: Alignment.center,
              child: Text(
                ApplicationConstants.applicationDevelopers,
                style: TextStyle(
                    color: ApplicationConstants.applicationTextColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
