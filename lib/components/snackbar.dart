import 'package:download_button/components/Duration.dart';
import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message, {Duration? duration}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Text(message),
          Spacer(),
          IconButton(
            onPressed: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            icon: Icon(Icons.remove),
          )
        ],
      ),
      duration: duration ?? sec2(),
    ),
  );
}