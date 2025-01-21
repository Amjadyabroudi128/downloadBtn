
 import 'package:download_button/components/appSizes.dart';
import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

class containerBorder {
  static Radius circularindicator = Radius.circular(sizeHelper.circular4);
  static BorderSide btm = BorderSide(
        color: myColor.bColor,
        width: sizeHelper.btmwidth,
  );
  static BorderSide right = BorderSide(
        color: myColor.bColor,
        width: sizeHelper.sideWidth
    );
  static BorderRadiusGeometry circular = BorderRadius.circular(sizeHelper.circular11);
  static EdgeInsetsGeometry myPadding =  EdgeInsets.all(sizeHelper.P12);
  static RoundedRectangleBorder snackBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(sizeHelper.P12)
  );

 }