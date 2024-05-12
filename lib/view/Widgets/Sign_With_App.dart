import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sign_With_App extends StatelessWidget {
  final String image;
  final String text;
  const Sign_With_App({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          border:Border.all(color: Colors.grey,),
        ),
        child:Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
            SizedBox(width: 80,),
            Text(text),
          ],
        ),
      ),
    );
  }
}