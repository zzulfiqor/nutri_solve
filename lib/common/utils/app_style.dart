import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//
// App Color Variable
Color mainColorBright = Color(0xff8FD3C8);
Color mainColor = Color(0xff2DCC95);
Color mainColorDark = Color(0xFF2AA379);
Color accentColor = Color(0xFFFF8F8F);
Color backgroundColor = Color(0xFFFAF9FA);
Color bodyTextColorBlack = Color(0xFF111111);
Color bodyTextColorBlackGrey = Color(0xFF212925);
Color bodyTextColorGrey = Color(0xFF868686);
Color bodyTextColorGreyBright = Color(0xFFC0C0C0).withOpacity(.2);

//
// App Text Style
TextStyle bodysubParagraphTextStyleGrey = GoogleFonts.nunitoSans(
  color: bodyTextColorGrey,
  fontWeight: FontWeight.w400,
  fontSize: bodySubParagrapgTextSize,
);
//
// App Text Style
TextStyle bodyTextStyleWhite = GoogleFonts.nunitoSans(
  color: backgroundColor,
  fontWeight: FontWeight.w400,
  fontSize: bodyParagraphTextSize,
);
//
TextStyle bodyTextStyleBlack = GoogleFonts.nunitoSans(
  color: bodyTextColorBlack,
  fontWeight: FontWeight.w400,
  fontSize: bodyParagraphTextSize,
);
//
TextStyle bodyTextStyleGrey = GoogleFonts.nunitoSans(
  color: bodyTextColorGrey,
  fontWeight: FontWeight.w400,
  fontSize: bodyParagraphTextSize,
);
//
TextStyle bodyTextStyleGreyBright = GoogleFonts.nunitoSans(
  color: bodyTextColorGreyBright,
  fontWeight: FontWeight.w400,
);
//
TextStyle bodyTextStyleMainColor = GoogleFonts.nunitoSans(
  color: mainColorDark,
  fontWeight: FontWeight.w400,
  fontSize: bodyParagraphTextSize,
);
//
TextStyle titleTextStyleBlack = GoogleFonts.nunitoSans(
  color: bodyTextColorBlack,
  fontWeight: FontWeight.w600,
  fontSize: bodyTitleTextSize,
);
//
TextStyle titleTextStyleMainColorDark = GoogleFonts.nunitoSans(
  color: mainColorDark,
  fontWeight: FontWeight.w600,
  fontSize: bodyTitleTextSize,
);
//
TextStyle appbartitleTextStyleMainColorDark = GoogleFonts.nunitoSans(
  color: mainColorDark,
  fontWeight: FontWeight.w600,
  fontSize: header4TextSize,
);
//
TextStyle appbartitleTextStyleMainColorBlack = GoogleFonts.nunitoSans(
  color: bodyTextColorBlack,
  fontWeight: FontWeight.w600,
  fontSize: header4TextSize,
);
//
TextStyle hintStyleGrey = GoogleFonts.nunitoSans(
  color: bodyTextColorGrey.withOpacity(.5),
  fontSize: bodyParagraphTextSize,
);
//
TextStyle titleTextStyleWhite = GoogleFonts.nunitoSans(
  color: backgroundColor,
  fontWeight: FontWeight.w600,
  fontSize: bodyTitleTextSize,
);
//
// App Font Size
double bodySubParagrapgTextSize = 12.0;
double bodyParagraphTextSize = 15.0;
double bodyTitleTextSize = 16.0;
double header1TextSize = 24.0;
double header2TextSize = 22.0;
double header3TextSize = 20.0;
double header4TextSize = 18.0;

//
// Value
double paddingBodyValue = 14.0;
double paddingContainerInput = 4.0;
double paddingNarrowCard = 8.0;

double borderRadiusBoxValue = 10.0;
double borderRadiusTextInputValue = 8.0;
double spaceSmallest = 5.0;
double spaceSmall = 10.0;
double spaceMedium = 15.0;
double spaceWide = 20.0;
double spaceWider = 25.0;
