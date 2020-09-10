import 'package:bmi_calculator/screens/main_screen.dart';
import 'dart:math';

class BMI{

  Gender gender;
  double height;
  double weight;
  double age;
  double _bmi;
  String _bmiResult;

  BMI({this.gender, this.height, this.weight, this.age});

  String calculate(){
    double bmi = weight / pow(height/100, 2);
    this._bmi = bmi;
    if(bmi < 17)
      _bmiResult = 'superlow';
    else if(bmi >= 17 && bmi < 18.5)
      _bmiResult = 'low';
    else if(bmi >= 18.8 && bmi < 25)
      _bmiResult = 'normal';
    else if(bmi >= 25 && bmi < 30)
      _bmiResult = 'high';
    else if(bmi >= 30 && bmi < 35)
      _bmiResult = 'obese1';
    else if(bmi > 35)
      _bmiResult = 'obese2';
    print(bmi);
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    return _info[_bmiResult]['result'];
  }

  String getDescription(){
    return _info[_bmiResult]['description'];
  }

  Map _info = {
    'superlow':{
      'result': 'Muito abaixo do peso',
      'description': 'Dietas hipercalóricas e atividades físicas de '
        'fortalecimento como musculção e pilates podem ajudar. Procure a ajuda '
        'de um médico para receber orientações adequadas.',
    },
    'low': {
      'result': 'Abaixo do peso',
      'description': 'Observe a alimentação! Consumo de proteínas em maior '
        'quantidade e qualidade é recomendado.',
    },
    'normal': {
      'result': 'Peso normal',
      'description': 'Nada a se precupar. Mantenha as rotinas de atividade'
          ' física e alimentação.',
    },
    'high': {
      'result': 'Acima do peso',
      'description': 'Observe a rotima de atividade física. Um pouco mais '
        'de atividade no dia fará uma grande diferença.',
    },
    'obese1': {
      'result': 'Obesidade I',
      'description': 'Atenção! A rotina alientar deve ser revista e as '
        'atividades físicas serão fundamentais para o restabelecimento do peso '
        'normal. Procure apoio nutricional e físico para receber as melhores '
        'orientações.',
    },
    'obese2': {
      'result': 'Obesidade II (severa)',
      'description': 'Procure um médico imediatamente! A obesidade favorece '
        'o desenvolvimento de diversos tipos de doenças, principalmente '
        'cardíacas. O acompanhamento médico, nutricional e físico é de extrema '
        'importancia. Conte também com o apoio familiar.',
    },
  };

}