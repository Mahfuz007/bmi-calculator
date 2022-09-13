import 'package:bmi_calculator/Screens/result_page.dart';
import 'package:bmi_calculator/Widgets/floatingButton.dart';
import 'package:bmi_calculator/calculateBmi.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Widgets/ReusableCard.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int sliderValue = 166;
  int weight = 71;
  int age = 24;
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(kAppTitle.toString())),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.male,
                          size: 80.0,
                          color: selectedGender == Gender.male
                              ? kWhiteColor
                              : kInactiveTitleColor,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          kMaleCardTitle.toString(),
                          style: selectedGender == Gender.male
                              ? kActiveTitle
                              : kInactiveTitle,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.female,
                          size: 80.0,
                          color: selectedGender == Gender.female
                              ? kWhiteColor
                              : kInactiveTitleColor,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          kFemaleCardTitle.toString(),
                          style: selectedGender == Gender.female
                              ? kActiveTitle
                              : kInactiveTitle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ReusableCard(
                onTap: () {},
                color: kActiveColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      kHeightCardTitle.toString(),
                      style: kInactiveTitle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          sliderValue.toString(),
                          style: kLargeNumber,
                        ),
                        Text(
                          kHeightParameterText.toString(),
                          style: kInactiveTitle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        activeTrackColor: kWhiteColor,
                        inactiveTrackColor: kInactiveTitleColor,
                        thumbColor: kMainFocusColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        trackHeight: 1,
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25),
                        overlayColor: Color(0xFF4a2348),
                      ),
                      child: Slider(
                        value: sliderValue.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            sliderValue = value.round();
                          });
                        },
                        min: 1.0,
                        max: 240.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {},
                    color: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          kWeightTitle.toString(),
                          style: kInactiveTitle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLargeNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingButton(
                              onPressed: () {
                                setState(() {
                                  if (weight != 0) weight--;
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            FloatingButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {},
                    color: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          kAgeTitle.toString(),
                          style: kInactiveTitle,
                        ),
                        Text(
                          age.toString(),
                          style: kLargeNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingButton(
                              onPressed: () {
                                setState(() {
                                  if (age != 0) age--;
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            FloatingButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  CalculateBmi result = CalculateBmi(sliderValue, weight, age);

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultPage(
                            result: result.getCalculatedBMI(),
                            resultMessage: result.getResultMessage(),
                            resultTitle: result.getResultTitle(),
                          )));
                });
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.only(bottom: 10.0),
                color: kMainFocusColor,
                child: Center(
                  child: Text(
                    kBottomButtonText.toString(),
                    style: kBottomButton,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
