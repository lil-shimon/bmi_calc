import 'package:flutter/material.dart';

import 'package:bmi_calculator/widget/base_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BaseCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                  Expanded(
                    child: BaseCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BaseCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: BaseCard(
                    colour: Color(0xff1d1f33),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    colour: Color(0xff1d1f33),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
