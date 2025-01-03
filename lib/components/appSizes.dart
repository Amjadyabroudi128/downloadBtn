
 import 'package:flutter/material.dart';

 class myContainerSizes {
   static cWidth(BuildContext context) {
     return MediaQuery.of(context).size.width / 1.60;
   }
   static cHeight(BuildContext context) {
     return MediaQuery.of(context).size.height / 18.5;
   }
   static SizedBox myBox = SizedBox(width: 55,);
 }