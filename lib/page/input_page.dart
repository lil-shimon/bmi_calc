import 'package:flutter/material.dart';

import 'package:bmi_calculator/widget/base_card.dart';
import 'package:bmi_calculator/widget/bottom.dart';

const bottomContainerHeight = 80.0;
const backgroundColour = 0xff1d1f33;
const bottomContainerColour = 0xffeb1555;
const bottomContainerMarginTop = 10.0;

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
                    colour: Color(backgroundColour),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    colour: Color(backgroundColour),
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
                    colour: Color(backgroundColour),
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
                    colour: Color(backgroundColour),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    colour: Color(backgroundColour),
                  ),
                ),
              ],
            ),
          ),
          BottomContainer(
            colour: Color(bottomContainerColour),
            height: bottomContainerHeight,
            marginTop: bottomContainerMarginTop,
          )
        ],
      ),
    );
  }
}
