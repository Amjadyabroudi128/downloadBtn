import 'package:download_button/components/appSizes.dart';
import 'package:flutter/material.dart';

import '../features/home/widgets/iconButton.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        height: sizeHelper.height18,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
