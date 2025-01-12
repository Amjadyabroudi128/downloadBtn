import 'package:flutter/material.dart';

import '../../../components/progressBar.dart';

class animatedBuilder extends StatelessWidget {
  const animatedBuilder({
    super.key,
    required AnimationController progressController,
  }) : _progressController = progressController;

  final AnimationController _progressController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _progressController,
      builder: (context, child) {
        return linearIndicator(progressController: _progressController);
      },
    );
  }
}
