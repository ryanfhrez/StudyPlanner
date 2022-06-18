import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyplanner/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyplanner/widgets/benefits.dart';
import 'package:url_launcher/url_launcher.dart';
class DetailPage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      }else{
        throw(url);
      }
    }
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset('img/detailsqlite.jpg',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit:BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : TITTLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('SQLite',
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(
                                TextSpan(
                                    text: 'Database, etc',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                    ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('img/popular.png',
                              width: 30,
                              ),
                            ],
                          )
                        ],
                      ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // NOTE : MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Benefits",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: AquaColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Benefits(
                              point: "Course",
                              imageUrl: 'img/book.png',
                              total:20,
                            ),
                            Benefits(
                              point: "certificate",
                              imageUrl: 'img/certificate.png',
                              total: 1,
                            ),
                            Benefits(
                              point: "update course",
                              imageUrl: 'img/update.png',
                              total: 3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE: PHOTO
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Photos",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: AquaColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                          Image.asset(
                          "img/dropbox.png",
                          height: 100,
                          width:110,
                          fit: BoxFit.cover,
                        ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "img/mcafee.png",
                              height: 100,
                              width:110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "img/facebook.jpg",
                              height: 100,
                              width:110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: edge,
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
                          "Location",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AquaColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'jln. Komplek perumahan \nangkatan darat \nCibubur',
                              style:regulertextstyle,
                            ),
                            InkWell(
                              onTap: (){
                                launchUrl('https://www.google.com/maps/place/KPAD+Cibubur/@-6.359541,106.8828524,16z/data=!4m18!1m12!4m11!1m3!2m2!1d106.8892898!2d-6.3586238!1m6!1m2!1s0x2e69ed31bac5dd7f:0x902cd8d91375fc45!2sKPAD+Cibubur,+4,+Jl.+Kumis+Kucing+III+No.10,+RW.8,+Cibubur,+Kec.+Ciracas,+Kota+Jakarta+Timur,+Daerah+Khusus+Ibukota+Jakarta+13720!2m2!1d106.8889455!2d-6.3604161!3m4!1s0x2e69ed31bac5dd7f:0x902cd8d91375fc45!8m2!3d-6.3604161!4d106.8889455');
                              },
                              child: Image.asset(
                                  'img/btn_maps.png',
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          onPressed: (){
                          },
                          color: AquaColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)
                          ),
                          child: Text(
                           'Join Now',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'img/button_back.png',
                      width: 45,
                      height: 45,
                    ),
                  ),
                  Image.asset(
                    'img/Icon_love.png',
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
