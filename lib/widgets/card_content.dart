import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {

  final IconData icon;
  final String label;

  const CardContent({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 70,
        ),
        SizedBox(height: 15,),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
