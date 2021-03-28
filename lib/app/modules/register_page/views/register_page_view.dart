import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/AppbarBackButton.dart';
import 'package:nutri_solve/common/widgets/TextInputCustom.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: titleTextStyleBlack,
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: AppbarBackButton(),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
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
                    "Register,",
                    style: titleTextStyleBlack.copyWith(
                        fontSize: header1TextSize, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Complete form with your data",
                    style: titleTextStyleBlack.copyWith(
                      fontSize: header3TextSize,
                      color: bodyTextColorGrey,
                    ),
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
                    hintText: 'Your full name',
                    prefixIcon: Icon(Icons.person, size: 18),
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceMedium),
                  //
                  // Text Input Email
                  TextInputCustom(
                    hintText: 'Your adress',
                    prefixIcon: Icon(Icons.home, size: 18),
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceMedium),
                  //
                  // Text Input Email
                  TextInputCustom(
                    hintText: 'ex : john123@domain.com',
                    prefixIcon: Icon(Icons.email, size: 18),
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceMedium),
                  //
                  // Text Input Password
                  TextInputCustom(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, size: 18),
                    isSecret: true,
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceMedium),
                  //
                  // Text Input Password Confirmation
                  TextInputCustom(
                    hintText: 'Password Confirmation',
                    prefixIcon: Icon(Icons.lock, size: 18),
                    isSecret: true,
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceSmall),

                  //
                  // Spacer
                  SizedBox(height: spaceMedium),
                  //
                  // CheckBox Confirmation Term & Condition
                  Obx(() => CheckboxListTile(
                        activeColor: mainColorDark,
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: controller.isAgreeWithTerm.value,
                        onChanged: (controller.isProcessingRegister.value)
                            ? null
                            : (newVal) {
                                controller.isAgreeWithTerm.toggle();
                              },
                        title: Text(
                          'By Registering, I Agree to NutriSolve Term & Policies.',
                          style: bodyTextStyleGrey,
                        ),
                      )),
                  //
                  // Spacer
                  SizedBox(height: spaceWider),
                  //
                  // Button Register
                  SizedBox(
                    width: Get.width,
                    height: 50,
                    child: Obx(() => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: mainColorDark,
                          ),
                          onPressed: (controller.isAgreeWithTerm.value == false)
                              ? null
                              : controller.processRegister,
                          child: (controller.isProcessingRegister.value)
                              ? Center(
                                  child: Transform.scale(
                                    scale: .7,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          mainColorDark),
                                    ),
                                  ),
                                )
                              : Text("Register"),
                        )),
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
                            width: Get.width * .3,
                            color: bodyTextColorGrey.withOpacity(.3),
                          ),
                          Text(
                            'or register with',
                            style: bodyTextStyleGrey.copyWith(
                                color: bodyTextColorGrey.withOpacity(.5)),
                          ),
                          Container(
                            height: 1,
                            width: Get.width * .3,
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
                                overlayColor: MaterialStateColor.resolveWith(
                                    (states) => bodyTextColorGreyBright)),
                            // TODO : Implement google register
                            onPressed: () {},
                            child: SizedBox(
                                height: 28,
                                child:
                                    Image.asset('lib/res/img/google_icon.png')),
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
                                overlayColor: MaterialStateColor.resolveWith(
                                    (states) => bodyTextColorGreyBright)),
                            // TODO : Implement facebook register

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
              SizedBox(
                height: Get.height * .09,
              )
            ],
          ),
        ),
      ),
    );
  }
}
