import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_solve/common/widgets/BlankDialog.dart';

enum LoginState { LoggingIn, LoggedIn, LoginError, Idle }

class WelcomingPageController extends GetxController {
  final isLoggingIn = false.obs;
  final loginState = LoginState.Idle.obs;

  // Text Input Controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // TODO : IMPLEMENT LOGIN FEATURE HERE
  void loggingIn() async {
    Get.dialog(BlankDialog(), barrierDismissible: false);
    isLoggingIn.toggle();
    await Future.delayed(Duration(seconds: 2), () {
      // TODO:IS SUPPOSED TO BE OFFALLNAMED
      Get.back();
      Get.offAllNamed('/home');
      isLoggingIn.toggle();
    });
  }
}
