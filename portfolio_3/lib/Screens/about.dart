import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Column(
          children: [
            ////BIOGRAPHY CONTAINER
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w, 
              ),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Center(
                        child: Text(
                      "Hi, my name is Syed Ashir Ali and I'm a Flutter Mobile App Developer and also a student of Computer Science from Karachi, Pakistan. I have 1.5 year experience in Flutter mobile application development",
                      style: TextStyle(fontSize: 15.sp, height: 1.7, fontWeight: FontWeight.w500),textAlign: TextAlign.justify,
                    )),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            ////INFORMATION AND DETAILS SECTION
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.sp),
              child: Container(
              
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Name:",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Text("Syed Ashir Ali",
                                style: TextStyle(fontSize: 17.sp)),
                          ),
                          ListTile(
                            title: Text("From:",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold)),
                            trailing: Text("Karachi, Pakistan",
                                style: TextStyle(fontSize: 17.sp)),
                          ),
                          ListTile(
                            title: Text("Qualification:",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold)),
                            trailing: Text("BSCS",
                                style: TextStyle(fontSize: 17.sp)),
                          ),
                          ListTile(
                            title: Text("Email:",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold)),
                            trailing: Text("syedashir07@gmail.com",
                                style: TextStyle(fontSize:16.sp)),
                          ),
                          ListTile(
                            title: Text("Phone:",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold)),
                            trailing: Text("+92 3353226549",
                                style: TextStyle(fontSize: 17.sp)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
          ],
        );
      },
    );
  }
}
