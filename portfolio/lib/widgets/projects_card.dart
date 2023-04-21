// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio/widgets/project_detail.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  String name, imagePath, projectDesc, projectUrl;
  ProjectCard(
      {super.key,
      required this.projectUrl,
      required this.name,
      required this.imagePath,
      required this.projectDesc});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: SizedBox(
          height: 90.w,
          child: Card(
            elevation: 1,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Card(
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: InkWell(
                            onTap: () =>
                                Navigator.of(context).push(PageRouteBuilder(
                              reverseTransitionDuration:const Duration(milliseconds: 50),
                              pageBuilder:(context, animation, secondaryAnimation) =>ProjectDetailPage(
                                imagePath: imagePath,projectDesc: projectDesc,projectUrl: projectUrl,
                                ),
                            )),
                            child: Hero(
                              tag: imagePath,
                              child: Image.asset(imagePath, fit: BoxFit.fill,width: double.infinity, height: double.infinity,)
                            ),
                          )),
                    )),
                ListTile(
                  title: Text(
                    name,
                    style:  TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.w400),
                  ),
                  trailing:  GestureDetector(
                    onTap: ()async{
                      await launchUrl(Uri.parse(projectUrl), mode: LaunchMode.externalApplication);
                    },
                    child: Icon(
                      FlutterRemix.github_line,
                      color: const Color(0xff38a0f9),
                      size: 23.sp,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
      },
    );
  }
}
