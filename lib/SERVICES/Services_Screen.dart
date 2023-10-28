// ignore_for_file: prefer_const_constructors

import 'package:e_kacheri/STATIC/utils.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.scaffoldColor,

      appBar: AppBar(
        title:Text('Services', style: Utils.appbarStyle),
        centerTitle:true,elevation:0,toolbarHeight:50,
        backgroundColor: Utils.appColor,
      ),
    );
  }
}
