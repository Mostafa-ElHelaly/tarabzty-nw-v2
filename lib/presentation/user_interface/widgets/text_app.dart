import 'package:flutter/material.dart';

import '../../../core/constance/color_assets.dart';


class TextApp extends StatelessWidget {
  const TextApp({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color,
  });

  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        // fontFamily: ColorAsset.mainFont,
        fontWeight: fontWeight,
      ),
    );
  }
}
