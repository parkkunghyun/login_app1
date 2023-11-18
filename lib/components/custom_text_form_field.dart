
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app1/size.dart';

import 'package:validators/validators.dart';

class CustomTextFormField extends StatelessWidget {

  final String text;
  final mValide;

  const CustomTextFormField({required this.text, required this.mValide});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: smallGap,),
        TextFormField(
          validator:mValide,
          obscureText: text == "Password" ? true : false,
          // 원래는 선 하나 아래 있는 형태임!
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}