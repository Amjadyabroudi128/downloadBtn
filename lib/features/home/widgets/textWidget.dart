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
      style: TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}
