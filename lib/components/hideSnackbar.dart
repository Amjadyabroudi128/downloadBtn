import 'package:flutter/material.dart';

hideBar (BuildContext context) {
  return  ScaffoldMessenger.of(context).hideCurrentSnackBar();

}