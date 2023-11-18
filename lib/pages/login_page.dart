
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app1/components/custom_text_form_field.dart';
import 'package:login_app1/size.dart';

import '../components/Logo.dart';
import '../components/custom_form.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlargeGap,),
            Logo("Login"),
            SizedBox(height: largeGap,),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}



