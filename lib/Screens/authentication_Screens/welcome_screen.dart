// ignore_for_file: use_super_parameters, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../Controllers/google_sign_in_controller.dart';
import '../../Utilities/application_Constsnts.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GoogleSigninController _googleSigninController =
      Get.put(GoogleSigninController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ApplicationConstants.applicationSecondaryColor,
        title: Text(
          ApplicationConstants.welcomeMessage,
          style: TextStyle(
            color: ApplicationConstants.applicationTextColor,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child:
                  Lottie.asset('assets/images/Animation - 1709048394769.json'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                ApplicationConstants.welcomeCallToAction,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 14,
                decoration: BoxDecoration(
                    color: ApplicationConstants.applicationSecondaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton.icon(
                    onPressed: () {
                      _googleSigninController.signInWithGoogle();
                    },
                    icon: Image.asset(
                      'assets/images/icons8-google-48.png',
                      width: Get.width / 12,
                      height: Get.height / 12,
                    ),
                    label: Text(
                      ApplicationConstants.googleSignInText,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 136, 112, 108)),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 14,
                decoration: BoxDecoration(
                    color: ApplicationConstants.applicationSecondaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/icons8-email-100.png',
                      width: Get.width / 12,
                      height: Get.height / 12,
                    ),
                    label: Text(
                      ApplicationConstants.emailSignInText,
                      style: TextStyle(
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
                      color: ApplicationConstants.applicationSecondaryColor),
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
                          color:
                              ApplicationConstants.applicationSecondaryColor)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
