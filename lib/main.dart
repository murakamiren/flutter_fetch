import 'package:flutter/material.dart';
import 'package:flutter_fetch/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter fetch",
      home: const HomePage(),
    );
  }
}
