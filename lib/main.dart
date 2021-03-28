import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "NutriSolve",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      theme: ThemeData(
        splashColor: bodyTextColorGrey.withOpacity(.2),
        primaryColor: mainColorDark,
      ),
    ),
  );
}
