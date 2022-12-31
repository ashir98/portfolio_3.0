import 'package:flutter/material.dart';
import 'package:portfolio_3/Provider/theme_settings.dart';
import 'package:portfolio_3/Screens/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);


  runApp( const Portfolio3());
}

class Portfolio3 extends StatelessWidget {
  const Portfolio3({super.key});

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