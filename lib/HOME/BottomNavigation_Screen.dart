// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'package:e_kacheri/HOME/HomeScreen.dart';
import 'package:e_kacheri/PROFILE/ProfileScreen.dart';
import 'package:e_kacheri/SERVICES/Services_Screen.dart';
import 'package:e_kacheri/STATIC/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavigation_Screen extends StatelessWidget {BottomNavigation_Screen({super.key});

final List<Widget> Screens = [
  HomeScreen(), // see the HomeTab class below
  ServicesScreen(),
  ProfileScreen()
];

@override
Widget build(BuildContext context) {
  return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        iconSize:25,
        activeColor:Utils.appColor,
        inactiveColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home_2),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Iconsax.security),label:'Services'),
          BottomNavigationBarItem(icon: Icon(Iconsax.profile_tick),label:'Account')
        ],
      ),
      tabBuilder: (BuildContext context, index) {
        return Screens[index];
      }
  );
 }
}
