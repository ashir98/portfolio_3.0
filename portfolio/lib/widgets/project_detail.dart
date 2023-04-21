// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectDetailPage extends StatelessWidget {
  String imagePath, projectDesc,projectUrl;
  ProjectDetailPage({super.key, required this.imagePath, required this.projectDesc, required this.projectUrl});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text("Description", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600),),
                        Text(projectDesc, style:   TextStyle(fontSize: 14.sp,height: 1.7),textAlign: TextAlign.justify,),
                      ],
                    ),
                  ),
                ),



                Card(
                  
                  child: SizedBox(
                    height: 8.h,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("View source code",style: TextStyle(fontSize: 15.sp),),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.primaryColor
                            ),
                            child: Icon(FlutterRemix.github_line, color: Colors.white,),
                            onPressed: ()async {
                              await launchUrl(Uri.parse(projectUrl), mode: LaunchMode.externalApplication);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],

              
            ),
          ),
        ),
      ),
    );
      },
    );
  }
}