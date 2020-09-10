import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget child;
  final Function onTap;

  const ReusableCard({@required this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
          height: 200,
          width: 170,
        ),
      ),
    );
  }
}