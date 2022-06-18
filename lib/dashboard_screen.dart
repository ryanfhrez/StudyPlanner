import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:studyplanner/Maps/gmaps.dart';
import 'package:studyplanner/profile_page.dart';
import 'package:studyplanner/stdyplanner/welcome_screen.dart';
import 'package:studyplanner/theme.dart';
import 'community_page.dart';
import 'package:studyplanner/contact/contacts.dart';




class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightAquaColor,
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.home,color: AquaColor,size: 40,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Userpage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "img/profile.png",
                    width: 50.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Welcome user !",
              style: TextStyle(
                  color: Color(0xff03989E),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeScreen(),
                                ),
                              );
                              },
                              child: Image.asset("img/studying.png", width: 100.0),
                              ),
                              SizedBox(height: 10.0),
                              Text("Study Plan",
                                  style: TextStyle(
                                      color: AquaColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommunityPage(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("img/diversity.png", width: 100.0),
                                SizedBox(height: 10.0),
                                Text(
                                  "Community",
                                  style: TextStyle(
                                      color: Color(0xff03989E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder:(context) => Contacts()
                      ),
                      );
                    },
                  child: SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("img/friends.png", width: 100.0),
                              SizedBox(height: 10.0),
                              Text("Contact",
                                  style: TextStyle(
                                      color: AquaColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => GmapsPage()
                      ),
                      );
                    },
                  child: SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("img/maps.png", width: 100.0),
                              SizedBox(height: 10.0),
                              Text("Maps",
                                  style: TextStyle(
                                      color: AquaColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
