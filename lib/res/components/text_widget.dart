import 'package:flutter/material.dart';

import '../colors/app_color.dart';
import '../fonts/app_fonts.dart';

class TextWidget extends StatelessWidget {
   TextWidget({Key? key, required this.title, this.width=100,
     this.textColor =AppColor.primaryTextColor,this.textSize=18,this.fontFamily =AppFonts.robotoRegular }) : super(key: key);

  final String title, fontFamily;
  final double width, textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: textSize,
            color: textColor),
      ),
    );
  }
}
