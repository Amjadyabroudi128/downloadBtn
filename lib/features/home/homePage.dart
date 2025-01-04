import 'package:download_button/components/Strings.dart';
import 'package:download_button/components/appSizes.dart';
import 'package:download_button/components/colors.dart';
import 'package:download_button/components/containerBorder.dart';
import 'package:download_button/components/myIcons.dart';
import 'package:download_button/components/textStyles.dart';
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
          child: Container(
            width: myContainerSizes.cWidth(context),
            height: myContainerSizes.cHeight(context),
            decoration: BoxDecoration(
              borderRadius: containerBorder.circular,
                color: myColor.border,
                border: Border(
                  bottom: containerBorder.btm,
                  right: containerBorder.right
                )
            ),
            child: GestureDetector(
              onTap: (){
                (isDownloading || isDownloaded) ? null : startDownload();
              },
              child: Padding(
                padding: containerBorder.myPadding,
                child: Row(
                  children: [
                    isDownloaded ? myIcons.check : myIcons.download,
                    // Icon(isDownloaded ? myIcons.check : myIcons.download, color: Colors.white70),
                    myContainerSizes.myBox,
                    Text(kStrings.download, style: Textstyles.dText,),
                  ],
                ),
              ),
            ),
            // child: TextButton(onPressed: (){},
            //     child: Text("Download", style: TextStyle(color: Colors.white),)),
          ),
          // child: ElevatedButton(
          //   onPressed: (isDownloading || isDownloaded) ? null : startDownload,
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //     foregroundColor: Colors.white,
          //     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          //     textStyle: const TextStyle(fontSize: 16),
          //   ),
          //   child: Text("Download"),
          //   // child: Stack(
          //   //   alignment: Alignment.center,
          //   //   children: [
          //   //     if (isDownloading)
          //   //       const Positioned(
          //   //         bottom: 0,
          //   //         left: 0,
          //   //         right: 0,
          //   //         child: LinearProgressIndicator(
          //   //           minHeight: 4,
          //   //           color: Colors.white,
          //   //           backgroundColor: Colors.grey,
          //   //         ),
          //   //       ),
          //   //     Row(
          //   //       mainAxisSize: MainAxisSize.min,
          //   //       children: [
          //   //         Icon(isDownloaded ? Icons.check : Icons.download),
          //   //         const SizedBox(width: 8),
          //   //         Text(
          //   //           isDownloading
          //   //               ? "Downloading..."
          //   //               : (isDownloaded ? "Downloaded" : "Download"),
          //   //         ),
          //   //       ],
          //   //     ),
          //   //   ],
          //   // ),
          // ),
        ),
      ),
    );
  }
}
