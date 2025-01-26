import 'package:flutter/material.dart';

class closeBtn extends StatelessWidget {
  final Widget kIcon;
  final VoidCallback? press;
  final EdgeInsetsGeometry? myPadding;
  const closeBtn({super.key, required this.kIcon, this.press, this.myPadding});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: kIcon,
      padding: myPadding,
    );
  }
}
