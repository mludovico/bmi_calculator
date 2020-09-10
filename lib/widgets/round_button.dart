import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  final Function onPressed;
  final Widget child;

  RoundButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        child: child,
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56,
        ),
        shape: CircleBorder(),
        fillColor: kRoundButtonColor,
        elevation: 2,
      ),
    );
  }
}
