import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nutri_solve/common/utils/app_style.dart';

class TextInputCustom extends StatelessWidget {
  const TextInputCustom({
    @required this.hintText,
    @required this.prefixIcon,
    this.controller,
    this.isSecret,
    Key key,
  }) : super(key: key);

  final String hintText;
  final Icon prefixIcon;
  final bool isSecret;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingContainerInput),
      decoration: BoxDecoration(
        color: bodyTextColorGreyBright,
        borderRadius: BorderRadius.circular(
          borderRadiusTextInputValue,
        ),
      ),
      height: 50,
      width: double.infinity,
      // TODO : Implement Input Text
      child: TextField(
        controller: controller ?? null,
        style: bodyTextStyleBlack,
        cursorColor: mainColorDark,
        obscureText: isSecret ?? false,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: hintStyleGrey),
      ),
    );
  }
}
