import 'package:download_button/components/containerBorder.dart';
import 'package:flutter/material.dart';

import 'myIcons.dart';

class closeIcon extends StatelessWidget {
  const closeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: myIcons.Close,
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
      padding: containerBorder.padding0, // Remove extra padding
    );
  }
}
