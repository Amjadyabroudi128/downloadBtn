
 import 'package:download_button/components/appSizes.dart';
import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

class containerBorder {

  static BorderSide btm = BorderSide(
        color: myColor.bColor,
        width: sizeHelper.btmwidth,
  );
  static BorderSide right = BorderSide(
        color: myColor.bColor,
        width: 3
    );
  static BorderRadiusGeometry circular = BorderRadius.circular(11);
  static EdgeInsetsGeometry myPadding =  EdgeInsets.all(12);
 }