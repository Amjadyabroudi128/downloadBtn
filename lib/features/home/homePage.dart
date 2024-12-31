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
        child: Container(
          width: MediaQuery.of(context).size.width / 1.60,
          height: MediaQuery.of(context).size.height / 17,
          child: Card(
            color: Colors.black,
            child: TextButton(onPressed: (){},
                child: Text("Download", style: TextStyle(color: Colors.white),)),
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