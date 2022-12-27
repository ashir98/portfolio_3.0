import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:transparent_image/transparent_image.dart';

class ProjectCard extends StatelessWidget {
  String name, imagePath;
  ProjectCard({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: FadeInImage.memoryNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    fadeInDuration: const Duration(milliseconds: 600),
                    fit: BoxFit.fill,
                    placeholder: kTransparentImage,
                    image: imagePath,
                    
                  )
                  ),
              )
            ),
              ListTile(
              title: Text(name, style: TextStyle( fontSize: 20, fontWeight: FontWeight.w400),),
              trailing: Icon(FlutterRemix.github_line),
              
            )
          ],
        ),
      )
          ),
    );;
  }
}