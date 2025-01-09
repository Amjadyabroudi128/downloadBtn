
 import 'package:flutter/cupertino.dart';

void delay (BuildContext context, int time)async  {
 await Future.delayed(Duration(seconds: time));
}