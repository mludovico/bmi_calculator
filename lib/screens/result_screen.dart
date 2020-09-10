import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:bmi_calculator/models/bmi.dart';
import 'package:bmi_calculator/screens/main_screen.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final Gender gender;
  final double height;
  final double weight;
  final double age;

  ResultScreen({this.gender, this.height, this.weight, this.age});


  @override
  Widget build(BuildContext context) {
    final BMI bmi = BMI(gender: gender, height: height, weight: weight, age: age);
    final bmiValue = bmi.calculate();
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Seu Resultado',
            style: kBigTextStyle,
          ),
          ReusableCard(
            color: kActiveContainerColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  bmi.getResult(),
                  textAlign: TextAlign.center,
                  style: kBigTextStyle.copyWith(
                    color: Colors.green,
                    fontSize: 30
                  ),
                ),
                Text(
                  bmiValue,
                  textAlign: TextAlign.center,
                  style: kBigTextStyle.copyWith(
                    fontSize: 75
                  )
                ),
                Text(
                  bmi.getDescription(),
                  textAlign: TextAlign.center,
                  style: kBigTextStyle.copyWith(
                    fontSize: 20
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'RECALCULAR',
            onPressed: (){
              Navigator.of(context).pop();
            }
          ),
        ],
      ),
    );
  }
}
