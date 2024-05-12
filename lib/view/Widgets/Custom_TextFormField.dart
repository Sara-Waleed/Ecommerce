import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'CustomText.dart';


class Custom_TextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final void Function(String?)? onSaved;
  final String? Function(String?)? Validation;
  const Custom_TextFormField({
    super.key,
    required this.text,
    required this.hint,
    required this.onSaved,
    required this.Validation
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: text, color:Colors.grey.shade900, fontSize: 14),
        TextFormField(
          onSaved: onSaved,
          validator: Validation,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey,

            ),
            fillColor: Colors.white,

          ),
        ),
      ],
    );
  }
}