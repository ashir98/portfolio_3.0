import 'package:flutter/material.dart';
import 'package:portfolio_3/Provider/theme_settings.dart';
import 'package:portfolio_3/Screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( const Portfolio3());
}

class Portfolio3 extends StatefulWidget {
  const Portfolio3({super.key});

  @override
  State<Portfolio3> createState() => _Portfolio3State();
}

class _Portfolio3State extends State<Portfolio3> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeSetting(),
      builder: (context, snapshot) {
        final settings = Provider.of<ThemeSetting>(context);
        return MaterialApp(
          theme: settings.currentTheme, 
          debugShowCheckedModeBanner: false,
          home:  const HomePage(),
        );
      },

    );
  }
}