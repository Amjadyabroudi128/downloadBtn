 import 'package:download_button/components/colors.dart';
import 'package:download_button/components/containerBorder.dart';
import 'package:download_button/components/textStyles.dart';
import 'package:flutter/material.dart';

import '../components/appSizes.dart';

class appTheme {
  static const floating = SnackBarBehavior.floating;
  static final myTheme = ThemeData().copyWith(
    iconTheme: IconThemeData(
      size: sizeHelper.defaultIcn,
      color: myColor.iconClr
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color:  myColor.linear,
      linearMinHeight: sizeHelper.mH,
      linearTrackColor: myColor.bgClr
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: Textstyles.barText,
      behavior: floating,
      shape: containerBorder.snackBorder,
    )
  );
}