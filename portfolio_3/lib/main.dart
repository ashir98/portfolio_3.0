import 'package:flutter/material.dart';
import 'package:portfolio_3/Screens/home.dart';

void main() {
  runApp( Portfolio3());
}

class Portfolio3 extends StatefulWidget {
  const Portfolio3({super.key});

  @override
  State<Portfolio3> createState() => _Portfolio3State();
}

class _Portfolio3State extends State<Portfolio3> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}