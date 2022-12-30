// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDetailPage extends StatelessWidget {
  String imagePath, projectDesc;
  ProjectDetailPage({super.key, required this.imagePath, required this.projectDesc});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Hero(
                    tag:  imagePath,
                    child: Card(
                      elevation:1,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image.asset(
                        
                        imagePath),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description", style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w600),),
                      SizedBox(height: 1.h,),
                      Text(projectDesc, style:   TextStyle(fontSize: 14.sp,height: 1.7),textAlign: TextAlign.justify,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
      },
    );
  }
}