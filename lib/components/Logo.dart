import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/logo.svg",
          height: 70,
          width: 70,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),
        ),
      ],
    );
  }
}