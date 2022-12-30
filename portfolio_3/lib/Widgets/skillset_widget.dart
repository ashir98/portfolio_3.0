
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:sizer/sizer.dart';

class SkillSet extends StatelessWidget {
  String skill, level;
 SkillSet({super.key, required this.skill, required this.level});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Sizer(
      builder: (context, orientation, deviceType) {

        return Padding(
      padding:  const EdgeInsets.symmetric(horizontal:20,vertical: 20),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(FlutterRemix.checkbox_circle_line,color: const Color(0xff37a0f9),size: width*0.06,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(skill,style:  TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w600), ),
                      Text(level,style:  TextStyle(fontSize:width*0.04,), ),
                    ],
                  )
                ],
              ),
    );
        
      },
    );
  }
}