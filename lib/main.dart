// ignore_for_file: prefer_const_constructors

import 'package:e_kacheri/SPLASH/SpalshScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Kacheri',
      debugShowCheckedModeBanner:false,
      home:SplashScreen(),
    );
  }
}
