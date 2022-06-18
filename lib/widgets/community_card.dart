import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyplanner/models/card_models.dart';
import '../theme.dart';


class communitycard  extends StatelessWidget {

  final Clogo clogo;

  communitycard(this.clogo);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: AquaColor,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                    clogo.imageUrl,
                  width: 120,
                  height: 100,
                  fit: BoxFit.cover,
                ),
               clogo.itsPopular ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AquaColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30)
                      ),
                    ),
                      child: Center(
                        child: Image.asset(
                          'img/popular.png',
                          width: 22,
                          height: 22 ,
                        ),
                      ),
                  ),
                )
                   : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              clogo.name,
              style:GoogleFonts.poppins(
                fontSize: 13,
                color:Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
