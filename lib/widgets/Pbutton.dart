import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyplanner/theme.dart';

class Mybutton extends StatelessWidget {
  final String Label;
  final Function()? onTap;
  const Mybutton({Key? key, required this.Label, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: PrimaryClr
        ),
          child: Center(
            child: Text(
            Label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
        ),
          ),
      ),
    );
  }
}
