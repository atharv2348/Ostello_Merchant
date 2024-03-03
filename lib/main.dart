import 'package:flutter/material.dart';
import 'package:ostello_merchant/pages/homepage.dart';
import 'package:ostello_merchant/utils/sizes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    kHeight = screenHeight / 800;
    kWidth = screenWidth / 360;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      home: HomePage(),
    );
  }
}
