import 'package:flutter/material.dart';

class positionedW extends StatelessWidget {
  final Widget? myChild;
  const positionedW({super.key, this.myChild});
  static double pS = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: pS,
      left: pS,
      right: pS,
      child: myChild!,
    );
  }
}
