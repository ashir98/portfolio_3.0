import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    useMaterial3: true,
    shadowColor: Color(0xff38a0f9),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        color: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black)),
    cardTheme: CardTheme(
      color: Color(0xffe8e8eb),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffe8e9eb),
      ),
    ),
    iconTheme: IconThemeData(color: Colors.black),
    tabBarTheme: TabBarTheme(
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


ThemeData darkTheme(){
  return ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: Color(0xff0a141d),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff0a141d)
    ),
    cardTheme: CardTheme(
        color: Color(0xff161f26)
    ),

     elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffe8e9eb),
      ),
    ),
    iconTheme: IconThemeData(color: Colors.white),
    tabBarTheme: TabBarTheme(
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
