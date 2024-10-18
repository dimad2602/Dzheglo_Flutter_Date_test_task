import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextBig extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  final bool? bold;
  final bool italic;
  final FontWeight? fontWeight;
  const TextBig({
    super.key,
    this.color = AppColors.mainTextColor,
    required this.text,
    this.size = 24,
    this.bold = false,
    this.italic = false,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Ubuntu',
          color: color,
          fontSize: size,
          fontStyle: italic ? FontStyle.italic : null,
          fontWeight: fontWeight ?? (bold == true ? FontWeight.bold : FontWeight.w400),)
    );
  }
}
