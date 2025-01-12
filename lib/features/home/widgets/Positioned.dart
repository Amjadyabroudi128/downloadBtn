import 'package:download_button/components/appSizes.dart';
import 'package:flutter/material.dart';

class positionedW extends StatelessWidget {
  final Widget? myChild;
  const positionedW({super.key, this.myChild});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: sizeHelper.pS,
      left: sizeHelper.pS,
      right: sizeHelper.pS,
      child: myChild!,
    );
  }
}
