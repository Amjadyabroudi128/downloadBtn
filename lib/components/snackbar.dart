import 'package:download_button/components/Duration.dart';
import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message, {Duration? duration}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        height: 18,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Text(message)),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.remove, size: 16,),
            )
          ],
        ),
        padding: EdgeInsets.zero,
      ),
      duration: duration ?? sec2(),
      dismissDirection: DismissDirection.down, // Custom direction for dismissing (sliding down).
    ),
  );
}