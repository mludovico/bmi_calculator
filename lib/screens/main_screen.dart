import 'package:bmi_calculator/constatnts/properties.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/bottom_container_contents.dart';
import 'package:bmi_calculator/widgets/card_content.dart';
import 'package:bmi_calculator/widgets/custom_slider.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{
  MALE,
  FEMALE
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Gender selectedGender;
  double height;
  double weight;
  double age;

  @override
  void initState() {
    super.initState();
    height = 160;
    weight = 60;
    age = 25;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'.toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableCard(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.FEMALE;
                    });
                  },
                  child: CardContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMININO',
                  ),
                  color: selectedGender == Gender.FEMALE ? kActiveContainerColor : kInactiveContainerColor,
                ),
                ReusableCard(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.MALE;
                    });
                  },
                  child: CardContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MASCULINO',
                  ),
                  color: selectedGender == Gender.MALE ? kActiveContainerColor : kInactiveContainerColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ALTURA',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: kBigTextStyle,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '[cm]',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      CustomSlider(
                        value: height,
                        onChanged: (newValue){
                          setState(() {
                            height = newValue;
                          });
                        },
                        min: 90,
                        max: 250,
                      ),
                    ],
                  ),
                  color: kActiveContainerColor,
                ),
              ]
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableCard(
                  child: BottomContainerContents(
                    value: '$weight',
                    unity: '[Kg]',
                    label: 'PESO',
                    minusFunction: (){
                      setState(() {
                        weight -= 0.5;
                      });
                    },
                    plusFunction: (){
                      setState(() {
                        weight += 0.5;
                      });
                    },
                  ),
                  color: kActiveContainerColor,
                ),
                ReusableCard(
                  child: BottomContainerContents(
                    value: '${age.round()}',
                    unity: '[anos]',
                    label: 'IDADE',
                    minusFunction: (){
                      setState(() {
                        age--;
                      });
                    },
                    plusFunction: (){
                      setState(() {
                        age++;
                      });
                    },
                  ),
                  color: kActiveContainerColor,
                ),
              ],
            )
          ),
          BottomButton(
            title: 'CALCULAR',
            onPressed: selectedGender == null ? null : (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_)=>ResultScreen(
                      gender: selectedGender,
                      height: height,
                      weight: weight,
                      age: age,
                    ),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}


