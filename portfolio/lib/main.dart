import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/provider/theme_settings.dart';
import 'package:portfolio/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    const MyPortfolio()
  );
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeSetting(),
      builder: (context, snapshot) {
        final settings = Provider.of<ThemeSetting>(context);
        return MaterialApp(
          theme: settings.currentTheme,
          debugShowCheckedModeBanner: false,
          home : const HomePage(),
        );
      },
    );
  }
}
