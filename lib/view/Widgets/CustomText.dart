import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color,
      //fontWeight: FontWeight.bold,
      fontSize: fontSize,

    ),);
  }
}