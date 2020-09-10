import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final Function onPressed;
  final String title;

  BottomButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomContainerHeight,
      child: RaisedButton(
        padding: EdgeInsets.only(bottom: 20),
        color: kBottomContainerColor,
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20
          ),
        ),
      ),
    );
  }
}
