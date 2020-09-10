import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:bmi_calculator/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomContainerContents extends StatelessWidget {

  final String value;
  final String label;
  final Function minusFunction;
  final Function plusFunction;
  final String unity;

  BottomContainerContents({
    @required this.value,
    @required this.label,
    @required this.minusFunction,
    @required this.plusFunction,
    @required this.unity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              value,
              style: kBigTextStyle,
            ),
            Text(
              unity,
              style: kLabelTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            RoundButton(
              child: Icon(
                FontAwesomeIcons.minus,
                size: 25,
              ),
              onPressed: minusFunction,
            ),
            RoundButton(
              child: Icon(
                FontAwesomeIcons.plus,
                size: 25,
              ),
              onPressed: plusFunction,
            ),
          ],
        ),
      ],
    );
  }
}
