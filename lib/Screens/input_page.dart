import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Widgets/ReusableCard.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                          style: ktitle,
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
                          style: ktitle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: ReusableCard(),
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
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
