import 'package:download_button/themes/appTheme.dart';
import 'package:flutter/material.dart';

import 'features/home/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme.myTheme,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


