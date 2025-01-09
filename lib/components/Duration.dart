
 import 'package:flutter/cupertino.dart';

Future<void> delay (BuildContext context, int seconds)  async {
 await Future.delayed(Duration(seconds: seconds));
}