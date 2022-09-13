import 'package:bmi_calculator/Widgets/floatingButton.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.male,
                          size: 100.0,
                          color: Color(0xFF90909C),
                        ),
                        Text(
                          "MALE",
                          style: kTitle,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.female,
                          size: 100.0,
                          color: Color(0xFF90909C),
                        ),
                        Text(
                          "FEMALE",
                          style: kTitle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(
                      "HEIGHT",
                      style: kTitle,
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
                        const Text(
                          "cm",
                          style: kTitle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        activeTrackColor: Color(0xFFFFFFFF),
                        inactiveTrackColor: Color(0xFF90909C),
                        thumbColor: Color(0xFFEA1556),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          kWeightTitle.toString(),
                          style: kTitle,
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
                                  if(weight!=0) weight--;
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            kAgeTitle.toString(),
                            style: kTitle,
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
                                    if(age!=0) age--;
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
            Container(
              height: 50.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 10.0),
              color: const Color(0xFFEA1556),
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: kBottomButton,
                ),
              ),
            ),
          ],
        ));
  }
}
