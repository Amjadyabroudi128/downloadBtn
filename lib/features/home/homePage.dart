import 'package:download_button/components/Duration.dart';
import 'package:download_button/components/Strings.dart';
import 'package:download_button/components/appSizes.dart';
import 'package:download_button/components/clipRectBorders.dart';
import 'package:download_button/components/colors.dart';
import 'package:download_button/components/containerBorder.dart';
import 'package:download_button/components/myIcons.dart';
import 'package:download_button/components/snackbar.dart';
import 'package:download_button/features/home/widgets/Positioned.dart';
import 'package:download_button/features/home/widgets/animatedBuilder.dart';
import 'package:download_button/features/home/widgets/textWidget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  bool isDownloading = false;
  bool isDownloaded = false;
  late AnimationController _progressController;
  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration:  secs3() // Match your download time
    );
  }
  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }
  void startDownload() async {
    setState(() {
      isDownloading = true;
    });
    _progressController.forward();
    // Simulate download process
    await delay(context, 3);

    setState(() {
      isDownloading = false;
      isDownloaded = true;
      showSnackBar(context, kStrings.itemDownloaded);
    });
    _progressController.reset();

    // Reset back to normal after 2 seconds
    await delay(context, 2);
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
              Container(
                width: sizeHelper.cWidth(context),
                height: sizeHelper.cHeight(context),
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
                        sizeHelper.myBox,
                        textWidget(
                            isDownloading: isDownloading, isDownloaded: isDownloaded),
                      ],
                    ),
                  ),
                ),
              ),
              if (isDownloading)
                 positionedW(
                  myChild: ClipRRect(
                    borderRadius:  cBorder.borders,
                    child: animatedBuilder(progressController: _progressController),
                  ),
                ),
            ],
          ),
        )
      ),
    );
  }
}




