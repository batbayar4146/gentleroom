import 'package:flutter/material.dart';
import 'package:gentleroom/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gentleroom.mn',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFFFFF),
      ),
      home: const MyHomePage(),
    );
  }
}
