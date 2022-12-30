import 'package:flutter/material.dart';
import 'package:portfolio_3/Constants/constants.dart';
import 'package:portfolio_3/Widgets/project_description.dart';
import 'package:portfolio_3/Widgets/projects_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectDescription projectDescription = ProjectDescription();
    ProjectUrl projectUrl = ProjectUrl();
    
    return Column(
      children: [
         ProjectCard(name: "AshWalls", imagePath: "images/1.jpg",projectDesc:projectDescription.projectDesc1, projectUrl: projectUrl.project1,),
         ProjectCard(name: "WhatsApp clone", imagePath: "images/2.jpg", projectDesc: projectDescription.projectDesc2,projectUrl: projectUrl.project2,),
         ProjectCard(name: "E-Commerce App", imagePath: "images/3.jpg",projectDesc: projectDescription.projectDesc3,projectUrl: projectUrl.project3,),
         ProjectCard(name: "Quiz App", imagePath: "images/4.jpg",projectDesc: projectDescription.projectDesc4, projectUrl: projectUrl.Project4,),
         ProjectCard(name: "Covid-19 Tracker App", imagePath: "images/5.jpg", projectDesc: projectDescription.projectDesc5, projectUrl:  projectUrl.project5,),
         SizedBox(height: 5,),

        // ProjectCard(
        //     name: "AshWalls", imagePath: "https://i.ibb.co/Qbv7fXp/1.jpg", projectDesc:projectDescription.projectDesc1,),
        // ProjectCard(
        //     name: "WhatsApp clone",
        //     imagePath: "https://i.ibb.co/SBcZ0MP/2.jpg", projectDesc: projectDescription.projectDesc2,),
        // ProjectCard(
        //     name: "E-Commerce App",
        //     imagePath: "https://i.ibb.co/JnM8g2P/3.jpg",projectDesc: projectDescription.projectDesc3,),
        // ProjectCard(
        //     name: "Quiz App", imagePath: "https://i.ibb.co/xsSXM0C/4.jpg",projectDesc: projectDescription.projectDesc4,),
        // ProjectCard(
        //     name: "Covid-19 Tracker App",
        //     imagePath: "https://i.ibb.co/0tm9mwq/5.jpg", projectDesc: projectDescription.projectDesc5,),
      ],
    );
  }
}
