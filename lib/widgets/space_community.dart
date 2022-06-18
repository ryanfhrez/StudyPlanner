import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:studyplanner/cpage_detail.dart';
import 'package:studyplanner/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyplanner/models/recommended.dart';

class SpaceCommunity  extends StatelessWidget {

  final Recommended recommended;

  SpaceCommunity(this.recommended);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => DetailPage(),
        ),
        );
      },
      child: Row(
        children: [
          ClipRRect(

            child:Container(
            width: 130,
            height: 90,
            child: Stack(
              children: [
                Image.asset(
                    recommended.imageUrl,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 45,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AquaColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30)
                      ),
                    ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                          'img/popular.png',
                          width: 22,
                          height: 22 ,
                        ),
                        ],
                      )
                    ),
                  ),
              ],
            ),
          ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommended.name,
                style:GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff03989E)
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                  TextSpan(
                    text: '${recommended.desc}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                    children: [

                    ]
                  ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                '${recommended.city}, ${recommended.country}',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.lightBlueAccent
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
