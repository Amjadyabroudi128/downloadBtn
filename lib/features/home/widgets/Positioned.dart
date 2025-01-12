import 'package:flutter/material.dart';

class positionedW extends StatelessWidget {
  final Widget? myChild;
  const positionedW({super.key, this.myChild});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: myChild!,
    );
  }
}
