import 'package:flutter/material.dart';
import 'package:portfolio/widgets/certificate_card.dart';
import 'package:portfolio/widgets/skillset_widget.dart';


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
                    SkillSet(skill: "Java", level: "Intermediate",),
                    SkillSet(skill: "HTML",level: "Intermediate",),
                    SkillSet(skill: "CSS", level: "Intermediate",),
                    
          
                  ],
                ) 
                
              ],
            ),
          ),
          const SizedBox(height: 5,),
          CertificationCard(name: "My Flutter Certification", image: "images/certificate.jpg"),
          const SizedBox(height: 5,),
        ],
      ),
    );
  }
}

