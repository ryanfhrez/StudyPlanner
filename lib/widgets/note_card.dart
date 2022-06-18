import 'package:flutter/material.dart';
import 'package:studyplanner/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';


Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyle.cardColor[doc['color_id']],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
            Icon(
                Icons.person,size:25,
            ),
          Text(
            doc["nama"],
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
            SizedBox(
              height: 10,
            ),
            Text(
            doc["no_telepon"],
            style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            ),
        ],
      ),
    ),
  );
}