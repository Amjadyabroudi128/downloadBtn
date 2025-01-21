
 import 'package:download_button/components/appSizes.dart';
import 'package:flutter/cupertino.dart';

class cBorder {
  static Radius circular = Radius.circular(sizeHelper.circular4);
  static BorderRadiusGeometry borders = BorderRadius.only (
    bottomLeft: circular,
    bottomRight: circular,
  );
 }