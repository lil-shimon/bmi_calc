import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/page/input_page.dart';
import 'package:bmi_calculator/widget/bottom_button.dart';
import 'package:flutter/material.dart';

import 'base_card.dart';

/// result page
class ResultsPage extends StatelessWidget {

  ResultsPage(
      {@required this.calculateBmi,
      @required this.result,
      @required this.interpretation});

  final String calculateBmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BaseCard(
              colour: Color(kBackgroundColour),
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: kResultNormalTextStyle,
                  ),
                  Text(
                    calculateBmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (content) => InputPage(),
                ),
              );
            },
            buttonText: "RECALCULATE",
          ),
        ],
      ),
    );
  }
}
