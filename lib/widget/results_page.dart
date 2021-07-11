import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/page/input_page.dart';
import 'package:bmi_calculator/widget/bottom_button.dart';
import 'package:flutter/material.dart';

import 'base_card.dart';

/// result page
class ResultsPage extends StatelessWidget {
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
                    "normal",
                    style: kResultNormalTextStyle,
                  ),
                  Text(
                    "14.7",
                    style: kBMITextStyle,
                  ),
                  Text(
                    "Your BMI result is quite low, you should eat more",
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
