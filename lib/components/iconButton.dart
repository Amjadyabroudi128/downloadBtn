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
      padding: EdgeInsets.zero, // Remove extra padding
    );
  }
}
