import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xffe8e8eb),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(child: Text("I am Syed Ashir Ali, App developer from Karachi, Pakistan. I have 1.5 year experience in Flutter mobile application development", style: TextStyle(fontSize: 20),)),
          ),
        )
        

      ],
    );
  }
}