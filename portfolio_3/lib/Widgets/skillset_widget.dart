
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

class SkillSet extends StatelessWidget {
  String skill, level;
 SkillSet({required this.skill, required this.level});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(FlutterRemix.checkbox_circle_line,color: Color(0xff37a0f9),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(skill,style: TextStyle(fontSize: 18,), ),
                      Text(level,style: TextStyle(fontSize:12,), ),
                    ],
                  )
                ],
              ),
    );
  }
}