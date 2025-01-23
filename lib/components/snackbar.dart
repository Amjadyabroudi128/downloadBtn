import 'package:download_button/components/Duration.dart';
import 'package:download_button/components/colors.dart';
import 'package:download_button/components/myIcons.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        height: 18,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(message),
            ),
            IconButton(
              icon: myIcons.Close,
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              padding: EdgeInsets.zero, // Remove extra padding
            ),
          ],
        ),
      ),
    ),
  );
}
