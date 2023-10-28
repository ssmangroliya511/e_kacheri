// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_kacheri/HOME/BottomNavigation_Screen.dart';
import 'package:e_kacheri/HOME/HomeScreen.dart';
import 'package:e_kacheri/STATIC/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../PROFILE/ProfileScreen.dart';

class SplashScreen extends StatelessWidget {SplashScreen({super.key});


  final List<Widget> Screens = [
     HomeScreen(), // see the HomeTab class below
     ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
        splashIconSize: 210,
        backgroundColor:Utils.appColor,
        splashTransition: SplashTransition.slideTransition,
        animationDuration:const Duration(seconds:2),
        splash: Column(children: [
          SizedBox(height:20),
          Expanded(
              child: Container(
                  height:100,width:90,alignment: Alignment.center,
                  decoration:BoxDecoration(
                      color:Colors.white, borderRadius:BorderRadius.circular(100)
                  ),
                  child: Text('E',style:GoogleFonts.poppins(
                      fontWeight:FontWeight.w500,fontSize:38,color:Utils.appColor))
              )
          ),
          SizedBox(height:10),
          Expanded(child: Text("e-Kacheri App",
              style:GoogleFonts.ptSansCaption(fontSize:15,
                  fontWeight:FontWeight.w500,color:Colors.white))
          ),
        ]),
        // nextScreen: BottomNavigation_Screen()
        nextScreen: BottomNavigation_Screen()
    );
  }
}
