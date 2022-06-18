import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyplanner/theme.dart';


class  Benefits extends StatelessWidget {

  final String point;
  final String imageUrl;
  final int total;

  Benefits({required this.point, required this.imageUrl, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width:43,
          height:43,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total ',
            style: Aquatextstyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: '$point',
                style: regulertextstyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
