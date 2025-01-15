 import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

import '../components/appSizes.dart';

class appTheme {
  static final myTheme = ThemeData().copyWith(
    iconTheme: IconThemeData(
      size: sizeHelper.defaultIcn,
      color: myColor.iconClr
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color:  myColor.linear,
      linearMinHeight: sizeHelper.mH,
      linearTrackColor: myColor.bgClr
    )
  );
}