import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';


ThemeData lightTheme() {
  return ThemeData(

    useMaterial3: true,
    shadowColor: const Color(0xff38a0f9),
    scaffoldBackgroundColor: CustomColor.lightBgColor,


    ///TEXT_FONTS THEME
    fontFamily: "Lato",

    
    ////APP BAR THEME
    appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black)),
    
    ////CARD THEME
    cardTheme:  CardTheme(
      color: CustomColor.secondaryLightColor,
    ),

    ////ICON THEME
    iconTheme: const IconThemeData(color: Colors.black),

    ////TAB BAR THEME
    tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        labelColor: Colors.black,
        indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}



ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: CustomColor.darkBgColor,

    ///TEXT_FONT THEME
    ///
    textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white, fontFamily: "Lato"),
        titleMedium: TextStyle(color: Colors.white,fontFamily: "Lato",)
      ),
    
    

    ////APP BAR THEME
    appBarTheme: const AppBarTheme(
        surfaceTintColor: Color(0xff0a141d),
        backgroundColor: Color(0xff0a141d)),


    ////CARD THEME    
    cardTheme: const CardTheme(color: Color(0xff161f26)),
    
    ///ICON THEME
    iconTheme: const IconThemeData(color: Colors.white),
    
    ///TAB BAR THEME
    tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        unselectedLabelStyle: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        labelColor: Colors.white,
        indicator: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.transparent)],
            color: Color(0xff0a141d),
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}
