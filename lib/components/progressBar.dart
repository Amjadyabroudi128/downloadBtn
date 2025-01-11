import 'package:flutter/material.dart';

import 'colors.dart';

class linearIndicator extends StatelessWidget {
  const linearIndicator({
    super.key,
    required AnimationController progressController,
  }) : _progressController = progressController;

  final AnimationController _progressController;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: _progressController.value,
      minHeight: 4,
      color: myColor.linear,
      backgroundColor: myColor.bgClr,
    );
  }
}