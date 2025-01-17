
 import 'package:flutter/cupertino.dart';

Future<void> delay (BuildContext context, int seconds)  async {
 await Future.delayed(Duration(seconds: seconds));
}
 Duration secs3() {
 return Duration(seconds: 3);
 }
 Duration sec1 () {
 return Duration(seconds: 1);
 }