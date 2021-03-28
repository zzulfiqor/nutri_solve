import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';

class AppbarBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        child: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: bodyTextColorBlackGrey,
          ),
        ),
      ),
    );
  }
}
