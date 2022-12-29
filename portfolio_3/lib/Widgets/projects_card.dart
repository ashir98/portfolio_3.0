// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio_3/Widgets/project_detail.dart';
import 'package:transparent_image/transparent_image.dart';

class ProjectCard extends StatelessWidget {
  String name, imagePath, projectDesc;
  ProjectCard({super.key, required this.name, required this.imagePath , required this.projectDesc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
            height: 300,
            width: 300,
            child: Card(
              elevation: 1,
              
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
        child: Column(
          children: [
            
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    // onTap: () => Navigator.of(context).push(
                    //   PageRouteBuilder(pageBuilder:(context, animation, secondaryAnimation) =>ProjectDetailPage(imagePath: imagePath),)
                    // ),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                        PageRouteBuilder(
                          reverseTransitionDuration: Duration(milliseconds: 50),
                          pageBuilder:(context, animation, secondaryAnimation) => ProjectDetailPage(imagePath: imagePath, projectDesc: projectDesc,),)
                      ),
                      child: Hero(
                        
                        tag: imagePath,
                        child: FadeInImage.memoryNetwork(
                          width: double.infinity,
                          height: double.infinity,
                          fadeInDuration: const Duration(milliseconds: 600),
                          fit: BoxFit.fill,
                          placeholder: kTransparentImage,
                          image: imagePath,
                          
                        ),
                      ),
                    ),
                  )
                  ),
              )
            ),
              ListTile(
              title: Text(name, style: const TextStyle( fontSize: 20, fontWeight: FontWeight.w400),),
              trailing: const Icon(FlutterRemix.github_line),
              
            )
          ],
        ),
      )
          ),
    );
  }
}



