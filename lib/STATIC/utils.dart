import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils{

  static  Color appColor        =  Colors.deepPurpleAccent;
  static  Color appColor2       =  Colors.yellowAccent;
  static  Color scaffoldColor   =  Colors.deepPurple.shade100.withOpacity(0.2);

  static TextStyle appbarStyle = GoogleFonts.poppins(
      fontSize:15.7,color:Utils.appColor2,fontWeight: FontWeight.w500
  );

  static TextStyle headlinesStyle = GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize:15);
}