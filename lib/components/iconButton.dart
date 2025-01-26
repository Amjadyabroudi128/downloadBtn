import 'package:flutter/material.dart';

class closeBtn extends StatelessWidget {
  final Widget kIcon;
  final VoidCallback? press;
  const closeBtn({super.key, required this.kIcon, this.press});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: kIcon,
    );
  }
}
