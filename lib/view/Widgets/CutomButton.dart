import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CutomButton extends StatelessWidget {
  final String text;
  final Color color;
  const CutomButton({
    super.key,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:  ElevatedButton.styleFrom(

          backgroundColor: color,
        ),
        onPressed: (){},
        child: Container(
            width:250,
            height: 50,
            child: Center(child: Text(text))));
  }
}