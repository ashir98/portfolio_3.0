import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/projects_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectDescription projectDescription = ProjectDescription();
    ProjectUrl projectUrl = ProjectUrl();
    
    return Column(
      children: [
        ProjectCard(name: "AshWalls", imagePath: "assets/images/1.jpg",projectDesc:projectDescription.projectDesc1, projectUrl: projectUrl.project1,),
        ProjectCard(name: "WhatsApp clone", imagePath: "assets/images/2.jpg", projectDesc: projectDescription.projectDesc2,projectUrl: projectUrl.project2,),
        ProjectCard(name: "E-Commerce App", imagePath: "assets/images/3.jpg",projectDesc: projectDescription.projectDesc3,projectUrl: projectUrl.project3,),
        ProjectCard(name: "Quiz App", imagePath: "assets/images/4.jpg",projectDesc: projectDescription.projectDesc4, projectUrl: projectUrl.project4,),
        ProjectCard(name: "Covid-19 Tracker App", imagePath: "assets/images/5.jpg", projectDesc: projectDescription.projectDesc5, projectUrl:  projectUrl.project5,),
        ProjectCard(name: "Education App", imagePath: "assets/images/6.jpg", projectDesc: projectDescription.projectDesc6, projectUrl: projectUrl.project6,),
        const SizedBox(height: 5,),

      ],
    );
  }
}
