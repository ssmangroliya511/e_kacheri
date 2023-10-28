// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../STATIC/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.scaffoldColor,

      appBar: AppBar(
        title:Text('Account', style: Utils.appbarStyle),
        centerTitle:true,elevation:0,toolbarHeight:50,
        backgroundColor: Utils.appColor,
      ),
    );
  }
}
