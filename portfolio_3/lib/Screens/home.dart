import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio_3/Provider/theme_settings.dart';
import 'package:portfolio_3/Screens/about.dart';
import 'package:portfolio_3/Screens/projects.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:portfolio_3/Screens/skills.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    
    TabController tabController = TabController(length: 3, vsync: this);
 
    final settings = Provider.of<ThemeSetting>(context);

    return MaterialApp(
      theme: settings.currentTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
              icon: settings.themeChanged(),
              onPressed:() {
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
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: const Color(0xff38a0f9), width: 3)),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage("images/dp.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "SYED ASHIR ALI",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Flutter App Developer",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),

              ///SOCIAL ICONS
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FlutterRemix.instagram_line,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      FlutterRemix.linkedin_box_line,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      FlutterRemix.github_line,
                      size: 25,
                    ),
                  ],
                ),
              ),

              ///CV, WHATSAPP, MESSENGER BUTTONS
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //CV DOWNLOAD BUTTON
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff37a0f9),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Download CV",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                FlutterRemix.download_line,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),

                    Container(
                      padding: EdgeInsets.zero,
                      height: 57,
                      width: 60,
                      child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: IconButton(
                          icon: const Icon(
                            FlutterRemix.whatsapp_line,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      height: 57,
                      width: 60,
                      child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: IconButton(
                          icon: const Icon(
                            FlutterRemix.messenger_line,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),

              /////TAB BAR STARTS FROM HERE
              ///

              Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: "About",
                        ),
                        Tab(
                          text: "Projects",
                        ),
                        Tab(
                          text: "Skills",
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              AutoScaleTabBarView(
                controller: tabController,
                children: const [AboutPage(), ProjectsPage(), SkillsPage()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
