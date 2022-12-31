import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_3/Constants/constants.dart';
import 'package:portfolio_3/Provider/theme_settings.dart';
import 'package:portfolio_3/Screens/about.dart';
import 'package:portfolio_3/Screens/projects.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:portfolio_3/Screens/skills.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    
    AccountUrl accountUrl = AccountUrl();
    
    TabController tabController = TabController(length: 3, vsync: this);
    final settings = Provider.of<ThemeSetting>(context);

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: settings.currentTheme,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              actions: [
                IconButton(
                  icon: settings.iconChange(),
                  onPressed: () {
                    settings.toggleTheme();
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              ///MAIN COLUMN WIDGET
              child: Column(
                children: [
                  ////CIRCLE AVATAR, NAME, SKILL,
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 5.w),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xff38a0f9), width: 3)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.2.w, vertical: 1.2.h),
                              child: const CircleAvatar(
                                maxRadius: 75,
                                minRadius: 70,
                                backgroundImage: AssetImage("images/dp.jpg"),
                                backgroundColor: Colors.transparent ,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Column(
                          children: [
                            Text(
                              "SYED ASHIR ALI",
                              style: TextStyle(
                                  fontSize: 25.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              "Flutter App Developer",
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  ///SOCIAL ICONS
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ///INSTAGRAM
                        GestureDetector(
                          onTap:()async{
                            await launchUrl(Uri.parse(accountUrl.instaUrl),mode: LaunchMode.externalApplication);
                          },
                          child: Icon(
                            FlutterRemix.instagram_line,
                            size: 23.sp,
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        
                        ///LINKEDIN
                        GestureDetector(
                          onTap:()async{
                            await launchUrl(Uri.parse(accountUrl.linkedinUrl),mode: LaunchMode.externalApplication);
                          },
                          child: Icon(
                            FlutterRemix.linkedin_box_line,
                            size: 23.sp,
                          ),
                        ),
                        SizedBox(width: 3.w,),

                        ///YOUTUBE
                        GestureDetector(
                          onTap:()async{
                            await launchUrl(Uri.parse(accountUrl.youtubeUrl),mode: LaunchMode.externalApplication);
                          },
                          child: Icon(
                            FlutterRemix.youtube_line,
                            size: 23.sp,
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        
                        ///GITHUB
                        GestureDetector(
                          onTap:()async{
                            await launchUrl(Uri.parse(accountUrl.githubUrl),mode: LaunchMode.externalApplication);
                          },
                          child: Icon(
                            FlutterRemix.github_line,
                            size: 23.sp,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///CV, WHATSAPP, MESSENGER BUTTONS
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.8.w, vertical: 0.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //CV DOWNLOAD BUTTON
                        SizedBox(
                          width: 43.w,
                          height: 7.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff37a0f9),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Download CV",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13.sp),
                                  ),
                                  Icon(
                                    FlutterRemix.download_line,
                                    color: Colors.white,
                                    size: 13.sp,
                                  )
                                ],
                              ),
                            ),
                            onPressed: ()async{
                              await launchUrl(
                                Uri.parse(accountUrl.cvUrl),
                                mode: LaunchMode.externalNonBrowserApplication);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 0.5.w,
                        ),

                        SizedBox(
                          
                          height: 8.h,
                          width: 18.w,
                          child: Card(
                            elevation: 1,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: IconButton(
                              icon: Icon(
                                FlutterRemix.whatsapp_line,
                                size: 20.sp,
                              ),
                              onPressed: ()async {
                                await launchUrl(Uri.parse(accountUrl.whatsappUrl), mode: LaunchMode.externalNonBrowserApplication);
                              },
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          height: 8.h,
                          width: 18.w,
                          child: Card(
                            elevation: 1,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: IconButton(
                              icon: Icon(
                                FlutterRemix.messenger_line,
                                size: 20.sp,
                              ),
                              onPressed: ()async{
                                await launchUrl(Uri.parse(accountUrl.messengerUrl), mode: LaunchMode.externalApplication);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  /////TAB BAR STARTS FROM HERE
                  ///

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: SizedBox(
                      height:9.h,
                      child: Card(
                        elevation: 1,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                          child: TabBar(
                            controller: tabController,
                            tabs: [
                              Tab(
                                child: Text(
                                  "About",
                                  style: GoogleFonts.openSans(fontSize: 14.sp),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Projects",
                                  style: GoogleFonts.openSans(fontSize: 14.sp),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Skills",
                                  style: GoogleFonts.openSans(fontSize: 14.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  AutoScaleTabBarView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    controller: tabController,
                    children: const [AboutPage(), ProjectsPage(),SkillsPage(),],
                  ),

                  
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
