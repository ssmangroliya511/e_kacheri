// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:e_kacheri/STATIC/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor:Utils.scaffoldColor,
      appBar: AppBar(
        title:Text('e-Kacheri', style: Utils.appbarStyle),
        centerTitle:true,elevation:0,toolbarHeight:50,
        backgroundColor: Utils.appColor,
        leading: IconButton(onPressed: () {

        }, icon: Icon(Iconsax.sidebar_right,size:21)),
        actions: [
          IconButton(onPressed: () {

          }, icon:Icon(BoxIcons.bx_notification,size:22))
        ],
      ),


      body:SingleChildScrollView(
        padding: EdgeInsets.only(left:10,right:10,bottom:30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(padding: EdgeInsets.symmetric(vertical:10),
              child: Text('Search through all our offerings',style:Utils.headlinesStyle)
            ),

            TextField(
              // controller:,
              cursorColor:Colors.blueAccent,cursorWidth:1,cursorHeight:20,
              style:GoogleFonts.ptSansCaption(fontSize:13),
              textInputAction:TextInputAction.done,
              decoration:InputDecoration(
                  filled:true,fillColor:Colors.white,
                  isDense: true, hintText:'Search here . . .',
                  hintStyle:GoogleFonts.ptSansCaption(fontSize:12.5),
                  constraints:BoxConstraints.loose(Size.fromHeight(40)),
                  contentPadding: EdgeInsets.only(top:15),
                  enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),borderSide: BorderSide.none
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                      borderSide: BorderSide(color:Utils.appColor,width:0.4)
                  ),
                  prefixIcon: Icon(Bootstrap.search,size:14,color:Utils.appColor,),
                  suffixIcon: IconButton(
                      splashColor:Colors.transparent,
                      highlightColor:Colors.transparent,
                      icon:Icon(CupertinoIcons.clear,size:15,color:Utils.appColor),
                      onPressed: () {},
                  )
              ),
            ),

            Padding(padding: EdgeInsets.only(top:20,bottom:10),
                child: Text('Our Services',style:Utils.headlinesStyle)
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceWidget('Company Registration', Utils.appColor,size,CupertinoIcons.doc_chart_fill),
                ServiceWidget('Gst & Other Indirect Tax', Utils.appColor,size,CupertinoIcons.calendar_circle_fill),
                ServiceWidget('Changes in Pvt Ltd Company', Utils.appColor,size,LineAwesomeIcons.asymmetrik__ltd_),
              ],
            ),

            SizedBox(height:10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceWidget('Changes in Ltd Liability Partnership', Utils.appColor,size,CupertinoIcons.doc_person_fill),
                ServiceWidget('Mandatory Annual Flings', Utils.appColor,size,LineAwesomeIcons.mandalorian),
                ServiceWidget('Labour Compliance', Utils.appColor,size,CupertinoIcons.triangle_righthalf_fill),
              ],
            ),
            SizedBox(height:10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceWidget('Accounting & Tax', Utils.appColor,size,Bootstrap.bank2),
                ServiceWidget('Convert Your Business', Utils.appColor,size,Iconsax.convert),
                ServiceWidget('HR Polices', Utils.appColor,size,Iconsax.polyswarm_nct),
              ],
            ),
            SizedBox(height:10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceWidget('International Business Setup', Utils.appColor,size,IonIcons.earth),
                ServiceWidget('License & Registration', Utils.appColor,size,Icons.local_police),
                ServiceWidget('Personal & Family', Utils.appColor,size,LineAwesomeIcons.users),
              ],
            ),
            SizedBox(height:10),
          ],
        ),
      ),
    );
  }
}


ServiceWidget(String text,Color color,size,IconData icon){
  return Container(
    padding: EdgeInsets.all(5),
    height:size.height/6-15,width:size.width/5+25,
    decoration: BoxDecoration(
        color:Colors.white,borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,color:color,size:40),
        Text(text,style:GoogleFonts.robotoSlab(fontSize:11.5),textAlign: TextAlign.center)
      ],
    ),
  );
}
