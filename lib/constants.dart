import 'package:flutter/material.dart';

//Text values
const kWeightTitle = "WEIGHT";
const kAgeTitle = "AGE";
const kAppTitle = "BMI CALCULATOR";
const kMaleCardTitle = "MALE";
const kFemaleCardTitle = "FEMALE";
const kHeightCardTitle = "HEIGHT";
const kHeightParameterText = "cm";
const kBottomButtonText = "CALCULATE";

//style values
const kBottomButton =  TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

const kInactiveTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xFF90909C));
const kActiveTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF));
const kLargeNumber = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF));

//Colors value
const kPrimaryColor = Color(0xFF0A0E21);
const kMainFocusColor = Color(0xFFEA1556);
const kActiveColor = Color(0xFF101427);
const kInactiveColor = Color(0xFF1D1F33);
const kWhiteColor = Color(0xFFFFFFFF);
const kInactiveTitleColor =  Color(0xFF90909C);

//enums
enum Gender{
  male,
  female
}