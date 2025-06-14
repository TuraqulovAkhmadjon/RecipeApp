import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
    required this.title,
    required this.desc,
    this.titleFontSize = 25,
    this.descFontSize = 13,
    this.titleFontWeight = FontWeight.w600,
    this.descFontWeight = FontWeight.w400,
    this.titleColor = Colors.white,
    this.descColor = Colors.white,
    this.titleLetterSpacing = 0,
    this.descLetterSpacing = 0,
    this.titleDecoration = TextDecoration.none,
    this.descDecoration = TextDecoration.none,
  });

  final String title, desc;
  final double titleFontSize, descFontSize;
  final double titleLetterSpacing, descLetterSpacing;
  final TextDecoration titleDecoration, descDecoration;
  final FontWeight titleFontWeight, descFontWeight;
  final Color titleColor, descColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            color: titleColor,
            fontSize: titleFontSize.sp,
            fontFamily: "Poppins",
            fontWeight: titleFontWeight,
            letterSpacing: titleLetterSpacing,
            decoration: titleDecoration,
          ),
        ),
        Text(
          desc,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            color: descColor,
            fontSize: descFontSize.sp,
            fontFamily: "Poppins",
            fontWeight: descFontWeight,
            letterSpacing: descLetterSpacing,
            decoration: descDecoration,
          ),
        ),
      ],
    );
  }
}
