import 'package:download_button/components/appSizes.dart';
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
      minHeight: sizeHelper.mH,
      backgroundColor: myColor.bgClr,
    );
  }
}