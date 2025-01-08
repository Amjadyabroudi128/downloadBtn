import 'package:download_button/components/appSizes.dart';
import 'package:download_button/components/colors.dart';
import 'package:download_button/components/containerBorder.dart';
import 'package:download_button/components/myIcons.dart';
import 'package:download_button/features/home/widgets/textWidget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDownloading = false;
  bool isDownloaded = false;

  void startDownload() async {
    setState(() {
      isDownloading = true;
    });

    // Simulate download process
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      isDownloading = false;
      isDownloaded = true;
    });

    // Reset back to normal after 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isDownloaded = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Card(
          child: Stack(
            children: [
              // Main Container
              Container(
                width: myContainerSizes.cWidth(context),
                height: myContainerSizes.cHeight(context),
                decoration: BoxDecoration(
                  borderRadius: containerBorder.circular,
                  color: isDownloading
                      ? myColor.downloading
                      : (isDownloaded ? myColor.downloaded : myColor.download),
                  border: Border(
                    bottom: containerBorder.btm,
                    right: containerBorder.right,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    (isDownloading || isDownloaded) ? null : startDownload();
                  },
                  child: Padding(
                    padding: containerBorder.myPadding,
                    child: Row(
                      children: [
                        isDownloaded ? myIcons.check : myIcons.download,
                        myContainerSizes.myBox,
                        textWidget(
                            isDownloading: isDownloading, isDownloaded: isDownloaded),
                      ],
                    ),
                  ),
                ),
              ),

              // Linear Progress Indicator at the bottom
              if (isDownloading)
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                    child: LinearProgressIndicator(
                      minHeight: 4,
                      color: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
            ],
          ),
        )
      ),
    );
  }
}

