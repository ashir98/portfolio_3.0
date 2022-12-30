import 'package:flutter/material.dart';
import 'package:portfolio_3/Widgets/certificate_card.dart';
import 'package:portfolio_3/Widgets/projects_card.dart';
import 'package:portfolio_3/Widgets/skillset_widget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkillSet(skill: "Flutter", level: "Advance",),
                    SkillSet(skill: "Dart", level: "Intermediate",),
                    SkillSet(skill: "Firebase", level: "Basic",)
                  ],
                ),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkillSet(skill: "HTML",level: "Basic",),
                    SkillSet(skill: "CSS", level: "Basic",),
                    SkillSet(skill: "Java", level: "Basic",),
          
                  ],
                ) 
                
              ],
            ),
          ),
          SizedBox(height: 5,),
          CertificationCard(name: "Flutter Certification", image: "images/certificate.jpg"),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}

