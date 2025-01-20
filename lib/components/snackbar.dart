import 'package:download_button/components/Duration.dart';
import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message, {Duration? duration}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration ?? sec2(),
      showCloseIcon: true,
      closeIconColor: myColor.closeIcon,
      dismissDirection: DismissDirection.down, // Custom direction for dismissing (sliding down).
    ),
  );
}