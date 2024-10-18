import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final bool italic;
  final FontWeight? fontWeight;

  const TextSmall({
    super.key,
    this.color = AppColors.mainTextColor,
    required this.text,
    this.size = 12,
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
        fontWeight: fontWeight ?? FontWeight.w400,
        fontSize: size,
        fontStyle: italic ? FontStyle.italic : null,
      ),
    );
  }
}
