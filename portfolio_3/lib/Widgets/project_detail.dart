import 'package:flutter/material.dart';

class ProjectDetailPage extends StatelessWidget {
  String imagePath, projectDesc;
  ProjectDetailPage({super.key, required this.imagePath, required this.projectDesc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Hero(
                  tag:  imagePath,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Image.network(
                      
                      imagePath),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Description", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),),
                    Text(projectDesc, style: const TextStyle(fontSize: 15,),textAlign: TextAlign.justify,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}