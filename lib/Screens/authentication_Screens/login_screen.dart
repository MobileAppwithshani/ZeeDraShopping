// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_unnecessary_containers, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import '../../Utilities/application_Constsnts.dart';
import 'signUp_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ApplicationConstants.applicationSecondaryColor,
          centerTitle: true,
          title: Text(
            ApplicationConstants.loginAppBarText,
            style: TextStyle(color: ApplicationConstants.applicationTextColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? Text(ApplicationConstants.welcomeMessage)
                    : Column(
                        children: [
                          Lottie.asset(
                              'assets/images/Animation - 1709067593277.json'),
                        ],
                      ),
                Container(
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
                SizedBox(
                  height: Get.height / 40,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: Get.width,
                  child: TextFormField(
                    cursorColor: ApplicationConstants.applicationSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: ApplicationConstants.applicationSecondaryColor,
                        ),
                        suffixIcon: const Icon(Icons.visibility_off),
                        contentPadding:
                            const EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: ApplicationConstants.applicationSecondaryColor),
                  ),
                ),
                Material(
                  child: Container(
                    width: Get.width / 2.5,
                    height: Get.height / 18,
                    decoration: BoxDecoration(
                        color: ApplicationConstants.applicationSecondaryColor,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ApplicationConstants.signUpText,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ApplicationConstants.applicationTextColor,
                          ),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?  ",
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              ApplicationConstants.applicationSecondaryColor),
                    ),
                    SizedBox(
                      height: Get.height / 20,
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => SignUpScreen()),
                      child: const Text("Sign Up",
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
