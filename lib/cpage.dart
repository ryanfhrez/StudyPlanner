

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:studyplanner/theme.dart';
import 'package:studyplanner/widgets/bottom_navbar_item.dart';
import 'package:studyplanner/widgets/community_card.dart';
import 'package:studyplanner/widgets/space_community.dart';
import 'models/card_models.dart';
import 'theme.dart';
import 'widgets/community_card.dart';
import 'models/recommended.dart';

class cpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
               height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text("Community",
                  style: GoogleFonts.poppins(
                  fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AquaColor,
               ),
              ),
            ),
            SizedBox(
              height: 2,
            ),

            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "terdapat berbagai komunitas yang tersedia",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: GreyColor,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // POPULAR COMMUNITY
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Community",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AquaColor,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                communitycard(
                  Clogo(
                    id: 1,
                    name: "Flutter",
                    imageUrl: 'img/card1.jpg',
                    itsPopular: true,

                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                communitycard(
                  Clogo(
                      id: 2,
                      name: "Firebase",
                      imageUrl: 'img/card2.png',
                      itsPopular: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                communitycard(
                  Clogo(
                      id: 3,
                      name: "JavaScript",
                      imageUrl: 'img/card3.png',
                      itsPopular: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Recommended Community",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AquaColor,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCommunity(
                    Recommended(
                     id: 1,
                      name: "SQLite",
                      imageUrl: 'img/sql.jpg',
                      desc: "database, etc",
                      city: "Cibubur",
                      country: "Jakarta Timur",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SpaceCommunity(
                    Recommended(
                      id: 2,
                      name: "PHP",
                      imageUrl: 'img/php.png',
                      desc: "code, etc",
                      city: "Depok",
                      country: "Jawa Barat",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SpaceCommunity(
                    Recommended(
                      id: 3,
                      name: "ReactJS",
                      imageUrl: 'img/reactjs.jpg',
                      desc: "user interface, etc",
                      city: "Nganjuk",
                      country: "Jawa Timur",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
               height: 60 + edge,
            ),

        ],
        ),
      ),
      floatingActionButton: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: BlueDark,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'img/Icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'img/Icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'img/Icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'img/Icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
