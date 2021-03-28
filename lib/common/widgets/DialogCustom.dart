import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nutri_solve/common/utils/app_style.dart';

class DialogCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadiusBoxValue),
            color: backgroundColor,
          ),
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .6,
          child: Transform.scale(
            scale: .75,
            child: Lottie.asset(
              'lib/res/lottie/success_animation.json',
            ),
          ),
        ),
      ),
    );
  }
}
