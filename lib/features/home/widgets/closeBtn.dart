import 'package:download_button/components/containerBorder.dart';
import 'package:download_button/components/hideSnackbar.dart';
import 'package:download_button/components/iconButton.dart';
import 'package:flutter/material.dart';

import '../../../components/myIcons.dart';

class closeIcon extends StatelessWidget {
  const closeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return closeBtn(
      kIcon: myIcons.Close,
      press: () {
        hideBar(context);
      },
      myPadding: containerBorder.padding0, // Remove extra padding
    );
  }
}
