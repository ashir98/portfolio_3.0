import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio_3/Widgets/projects_card.dart';


class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ProjectCard(name: "AshWalls", imagePath: "https://i.ibb.co/Qbv7fXp/1.jpg"),
         ProjectCard(name: "WhatsApp clone", imagePath: "https://i.ibb.co/SBcZ0MP/2.jpg"),
         ProjectCard(name: "E-Commerce App", imagePath: "https://i.ibb.co/JnM8g2P/3.jpg"),
         ProjectCard(name: "Quiz App", imagePath: "https://i.ibb.co/xsSXM0C/4.jpg"),
         ProjectCard(name: "Covid-19 Tracker App", imagePath: "https://i.ibb.co/0tm9mwq/5.jpg"),
      ],
    );
  }
}
