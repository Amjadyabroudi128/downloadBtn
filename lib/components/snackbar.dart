import 'package:download_button/components/Duration.dart';
import 'package:download_button/components/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        height: 18, // Adjust the height as needed
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center, // Ensures everything aligns
          children: [
            Expanded(
              child: Text(message),
            ),
            IconButton(
              icon: Icon(Icons.remove, color: Colors.white, size: 16), // Smaller icon
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
