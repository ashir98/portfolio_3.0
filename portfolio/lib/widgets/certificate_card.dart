// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CertificationCard extends StatelessWidget {
  String name , image;
  CertificationCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return SizedBox(
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
                      padding: const EdgeInsets.symmetric(horizontal:5, vertical: 5),
                      child: Card(
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Image.asset(image, fit: BoxFit.fill,width: double.infinity, height: double.infinity,)),
                    )),
                ListTile(
                  title: Text(
                    name,
                    style:  TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  
                )
              ],
            ),
          ));
      },
    );
  }
}