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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  bool isDownloading = false;
  bool isDownloaded = false;
  late AnimationController _progressController;
  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Match your download time
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
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      isDownloading = false;
      isDownloaded = true;
    });
    _progressController.reset();

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
              if (isDownloading)
                 Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                    child: LinearProgressIndicator(
                      value: _progressController.value,
                      minHeight: 4,
                      color: myColor.linear,
                      backgroundColor: myColor.bgClr,
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

