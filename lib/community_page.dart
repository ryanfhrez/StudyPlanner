import 'package:flutter/material.dart';
import 'cpage.dart';
import 'theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightAquaColor,
      body:SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("img/people.png"),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/logo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "JOIN OUR COMMUNITY",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: AquaColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "temukan komunitas dan mulai\nmembangun koneksi antar sesama",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AquaColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 150,
                      height: 40,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push
                            (context, MaterialPageRoute(
                            builder: (context) => cpage(),
                          ),
                          );
                        },
                        color: AquaColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          "Search Now",
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ) ,
                        ),
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}