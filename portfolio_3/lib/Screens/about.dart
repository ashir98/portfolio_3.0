import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: Text("Hi, my name is Syed Ashir Ali and I'm a Flutter Mobile App Developer and also a student of Computer Science from Karachi, Pakistan. I have 1.5 year experience in Flutter mobile application development", style: TextStyle(fontSize: 18),)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 310,
            width: 300,
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Name:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        trailing: Text("Syed Ashir Ali", style: TextStyle(fontSize: 20)),
                      ),
                      ListTile(
                        title: Text("From:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        trailing: Text("Karachi, Pakistan", style: TextStyle(fontSize: 20)),
                      ),
                      ListTile(
                        title: Text("Qualification:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        trailing: Text("BSCS", style: TextStyle(fontSize: 20)),
                      ),
                      ListTile(
                        title: Text("Email:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        trailing: Text("syedashir07@gmail.com", style: TextStyle(fontSize: 18)),
                      ),
                      ListTile(
                        title: Text("Phone:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        trailing: Text("+92 3353226549", style: TextStyle(fontSize: 20)),)
                    ],
                  ),
                 ),
              ),
            ),
          ),
        )
        

      ],
    );
  }
}