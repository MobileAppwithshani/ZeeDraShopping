// ignore_for_file: file_names, prefer_const_constructors, use_super_parameters, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../Utilities/application_Constsnts.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ApplicationConstants.applicationSecondaryColor,
          centerTitle: true,
          title: Text(
            ApplicationConstants.signupAppBarText,
            style: TextStyle(color: ApplicationConstants.applicationTextColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isKeyboardVisible
                    ? Text(ApplicationConstants.welcomeMessage)
                    : Column(
                        children: [
                          Lottie.asset('assets/images/SignUp.json',
                              height: Get.height / 3),
                        ],
                      ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: Get.width,
                  child: TextFormField(
                    cursorColor: ApplicationConstants.applicationSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        prefixIcon: Icon(
                          Icons.email,
                          color: ApplicationConstants.applicationSecondaryColor,
                        ),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: Get.width,
                  child: TextFormField(
                    cursorColor: ApplicationConstants.applicationSecondaryColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "User Name",
                        prefixIcon: Icon(
                          Icons.person,
                          color: ApplicationConstants.applicationSecondaryColor,
                        ),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: Get.width,
                  child: TextFormField(
                    cursorColor: ApplicationConstants.applicationSecondaryColor,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Phone Number",
                        prefixIcon: Icon(
                          Icons.phone,
                          color: ApplicationConstants.applicationSecondaryColor,
                        ),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: Get.width,
                  child: TextFormField(
                    cursorColor: ApplicationConstants.applicationSecondaryColor,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ApplicationConstants.applicationSecondaryColor,
                        ),
                        suffixIcon: Icon(Icons.visibility_off),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Material(
                  child: Container(
                    margin: EdgeInsets.only(top: 8.0),
                    width: Get.width / 2.5,
                    height: Get.height / 18,
                    decoration: BoxDecoration(
                        color: ApplicationConstants.applicationSecondaryColor,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ApplicationConstants.signInText,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ApplicationConstants.applicationTextColor,
                          ),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?  ",
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              ApplicationConstants.applicationSecondaryColor),
                    ),
                    SizedBox(
                      height: Get.height / 20,
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => SignInScreen()),
                      child: Text("Sign In",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ApplicationConstants
                                  .applicationSecondaryColor)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
