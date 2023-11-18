
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app1/components/Logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 200,),
            Logo("Care Soft"),
            SizedBox(height: 50,),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}