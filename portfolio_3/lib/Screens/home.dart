import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio_3/Screens/about.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {


    TabController tabController = TabController(length: 3, vsync: this);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(FlutterRemix.moon_line, color: Colors.black,),
              onPressed: () {
                
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
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xff38a0f9), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage("images/dp.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "SYED ASHIR ALI",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Flutter App Developer",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),


              ///SOCIAL ICONS
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FlutterRemix.instagram_line),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(FlutterRemix.linkedin_box_line),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(FlutterRemix.github_line),
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
                    Container(
                      width: 150,
                      height: 50,
                      
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff37a0f9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Download CV"),
                              Icon(FlutterRemix.download_line)
                            ],
                          ),
                        ),
                        onPressed: () {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 5,),
        
                    Container(
                      height: 50,
                      width: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          backgroundColor: Color(0xffe8e9eb)
                        ),
                        child: Center(child: Icon(FlutterRemix.whatsapp_line, color: Colors.black,)),
                        onPressed: () {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 50,
                      width: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          backgroundColor: Color(0xffe8e9eb)
                        ),
                        child: Icon(FlutterRemix.messenger_line, color: Colors.black,),
                        onPressed: () {
                          
                        },
                      ),
                    )
        
                  ],
                ),
              ),


              /////TAB BAR STARTS FROM HERE
              Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  color: Color(0xffe8e8eb),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TabBar(
                        controller: tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white
                        ),
                        tabs: [
                          Tab(
                            child: Text("About",style: TextStyle(color: Colors.black),),
                          ),
                          Tab(
                            child: Text("Projects",style: TextStyle(color: Colors.black),),
                          ),
                          Tab(
                            child: Text("Skills",style: TextStyle(color: Colors.black),),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 500,
                child: TabBarView(
                  
                  controller: tabController,
                  children: [
                    AboutPage(),
                    AboutPage(),
                    AboutPage(),
                    
                   
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
