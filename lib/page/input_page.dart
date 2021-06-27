import 'package:bmi_calculator/widget/sexCard.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/widget/base_card.dart';
import 'package:bmi_calculator/widget/bottom.dart';

const double bottomContainerHeight = 80.0;
const int backgroundColour = 0xff1d1f33;
const int bottomContainerColour = 0xffeb1555;
const double bottomContainerMarginTop = 10.0;
const double iconSize = 80.0;
const Color textColour = Color(0xff8d8e98);
const double textFontSize = 18.0;

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
                    childCard: SexCard(
                      textColour: textColour,
                      textFontSize: textFontSize,
                      iconProp: Icon(
                        FontAwesomeIcons.mars,
                        size: iconSize,
                      ),
                    )
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
