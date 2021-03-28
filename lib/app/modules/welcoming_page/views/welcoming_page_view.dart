import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/TextInputCustom.dart';

import '../controllers/welcoming_page_controller.dart';

class WelcomingPageView extends GetView<WelcomingPageController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // TODO:IMPLEMENT DIALOG LOG OUT
        print("Implement exit dialog");
      },
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          physics: NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(paddingBodyValue),
              color: backgroundColor,
              width: Get.width,
              height: Get.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //
                  // Header Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome,",
                        style: titleTextStyleBlack.copyWith(
                            fontSize: header1TextSize,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Login to continue",
                        style: titleTextStyleBlack.copyWith(
                            fontSize: header3TextSize,
                            color: bodyTextColorGrey),
                      ),
                    ],
                  ),
                  //
                  // Main Section
                  Column(
                    children: [
                      //
                      // Text Input Email
                      TextInputCustom(
                        controller: controller.emailController,
                        hintText: 'ex : john123@domain.com',
                        prefixIcon: Icon(Icons.email, size: 18),
                      ),
                      //
                      // Spacer
                      SizedBox(
                        height: spaceMedium,
                      ),
                      //
                      // Text Input Password
                      TextInputCustom(
                        controller: controller.passwordController,
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock, size: 18),
                        isSecret: true,
                      ),
                      //
                      // Spacer
                      SizedBox(height: spaceSmall),
                      //
                      // Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            /// TODO : IMplement FOrgot Password Features
                            onTap: () => print("Tapped : Forgot Password"),
                            child: Text(
                              "Forgot password ?",
                              style: bodyTextStyleMainColor,
                            ),
                          ),
                        ],
                      ),

                      //
                      // Spacer
                      SizedBox(height: spaceWider),
                      //
                      // Button Login
                      SizedBox(
                        width: Get.width,
                        height: 50,
                        child: Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: mainColorDark,
                            ),
                            onPressed: (controller.isLoggingIn.value)
                                ? null
                                : controller.loggingIn,
                            child: (controller.isLoggingIn.value)
                                ? Center(
                                    child: Transform.scale(
                                      scale: .7,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                mainColorDark),
                                      ),
                                    ),
                                  )
                                : Text("Login"),
                          ),
                        ),
                      ),
                      //
                      // Divider
                      Column(
                        children: [
                          //
                          // Spacer
                          SizedBox(height: spaceWider),
                          //
                          // Divider
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 1,
                                width: Get.width * .33,
                                color: bodyTextColorGrey.withOpacity(.3),
                              ),
                              Text(
                                'or login with',
                                style: bodyTextStyleGrey.copyWith(
                                    color: bodyTextColorGrey.withOpacity(.5)),
                              ),
                              Container(
                                height: 1,
                                width: Get.width * .33,
                                color: bodyTextColorGrey.withOpacity(.3),
                              ),
                            ],
                          ),
                          //
                          // Spacer
                          SizedBox(height: spaceMedium),
                        ],
                      ),
                      //
                      // Row Of Socials Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //
                          // Button Google
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: TextButton(
                                style: ButtonStyle(
                                    overlayColor:
                                        MaterialStateColor.resolveWith(
                                            (states) =>
                                                bodyTextColorGreyBright)),
                                onPressed: () {},
                                child: SizedBox(
                                    height: 28,
                                    child: Image.asset(
                                        'lib/res/img/google_icon.png')),
                              ),
                            ),
                          ),

                          //
                          // Button Facebook
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: TextButton(
                                style: ButtonStyle(
                                    overlayColor:
                                        MaterialStateColor.resolveWith(
                                            (states) =>
                                                bodyTextColorGreyBright)),
                                onPressed: () {},
                                child: SizedBox(
                                    height: 30,
                                    child: Image.asset(
                                        'lib/res/img/facebook_icon.png')),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  //
                  // Footer Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't hae an account ? ",
                        style: bodyTextStyleGrey,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/register-page');
                        },
                        child: Text(
                          "Register",
                          style: bodyTextStyleMainColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
