import 'package:bmi_calculator/Widgets/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.resultTitle,
      required this.result,
      required this.resultMessage})
      : super(key: key);
  final String resultTitle;
  final double result;
  final String resultMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(kAppTitle.toString())),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            kResultPageTitle.toString(),
            style: kResultPageTitleStyle,
          ),
          Expanded(
            child: ReusableCard(
              color: kInactiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    resultTitle.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFF29b270),
                    ),
                  ),
                  Text(
                    result.toStringAsFixed(1),
                    style: kExtraLargeNumber,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Normal BMI range: ',
                        style: kInactiveTitle,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: kActiveTitle,
                      ),
                    ],
                  ),
                  Text(
                    resultMessage.toString(),
                    style: kActiveTitle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 10.0),
              color: kMainFocusColor,
              child: Center(
                child: Text(
                  kResultPageBottomButtonText.toString(),
                  style: kBottomButton,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
