import 'package:download_button/components/textStyles.dart';
import 'package:flutter/material.dart';

class textWidget extends StatelessWidget {
  const textWidget({
    super.key,
    required this.isDownloading,
    required this.isDownloaded,
  });

  final bool isDownloading;
  final bool isDownloaded;

  @override
  Widget build(BuildContext context) {
    return Text(
      isDownloading
          ? "Downloading..."
          : (isDownloaded ? "Downloaded" : "Download"),
      style: Textstyles.dText,
    );
  }
}
