import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  
  final double value;
  final double min;
  final double max;
  final Function onChanged;

  CustomSlider({@required this.value, @required this.onChanged, @required this.min, @required this.max});
  
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbColor: kBottomContainerColor,
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: 15
        ),
        overlayColor: kBottomContainerColor.withAlpha(0x35),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
        activeTrackColor: Colors.white,
        inactiveTrackColor: kInactiveTrackerColor,
      ),
      child: Slider(
        value: value,
        onChanged: onChanged,
        max: max,
        min: min,
      ),
    );
  }
}
