import 'package:download_button/components/appSizes.dart';
import 'package:download_button/components/containerBorder.dart';
import 'package:flutter/material.dart';

import '../features/home/widgets/iconButton.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        height: sizeHelper.height18,
        alignment: containerBorder.centre,
        child: Row(
          mainAxisAlignment: containerBorder.space,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(message),
            ),
            closeIcon(),
          ],
        ),
      ),
    ),
  );
}
