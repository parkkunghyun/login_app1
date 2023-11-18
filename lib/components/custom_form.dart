
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../size.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Email", mValide:
              (value)
          {
            if (value!.isEmpty) {
              return "Please enter some text";
            } else if(!isEmail(value)) {
              return "이메일 형식이 아닙니다";
            } else {
              return null;
            }
            },
          ),
          SizedBox(height: mediumGap,),
          CustomTextFormField(text: "Password", mValide:
              (value) {
            if (value!.isEmpty) {
              return "Please enter some text";
            } else if(value.toString().length > 20) {
              return "패스워드 길이를 초과하였습니다";
            }  else {
              return null;
            }
          },
          ),
          SizedBox(height: largeGap,),
          TextButton(
            onPressed: (){
              // 유효성 검사 성공 true 리턴, 아니면 false리턴
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}