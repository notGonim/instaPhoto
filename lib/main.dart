import 'package:flutter/material.dart';
import 'package:instaphoto/responsive/mobileScreenLayout.dart';
import 'package:instaphoto/responsive/responsive_screen_layout.dart';
import 'package:instaphoto/responsive/webScreenLayout.dart';
import 'package:instaphoto/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InstaPhoto',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
