import 'package:bmi_calculator/widget/sexCard.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/widget/base_card.dart';
import 'package:bmi_calculator/widget/bottom.dart';

/// TODO: change those types from integer to Color
/// [backgroundColour], [inActiveCardColour] and [bottomContainerColour]
const int backgroundColour = 0xff1d1e33;
const int inActiveCardColour = 0xff111328;
const int bottomContainerColour = 0xffeb1555;
const double bottomContainerMarginTop = 10.0;
const double bottomContainerHeight = 80.0;
const double iconSize = 80.0;
const double textFontSize = 18.0;
const Color textColour = Color(0xff8d8e98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

/// this is the page of input option for calc BMI
/// states are maleColour, femaleColour
class _InputPageState extends State<InputPage> {
  int maleColour = inActiveCardColour;
  int femaleColour = inActiveCardColour;

  /// change card colour func
  /// require gender
  /// 1 = male, 2 = female
  void updateGenderColour(int gender) {

    /// in case gender is male
    if (gender == 1) {
      if (maleColour == inActiveCardColour) {
        maleColour = backgroundColour;
        femaleColour = inActiveCardColour;
      } else {
        maleColour = inActiveCardColour;
      }

      /// in case gender is female
    } else {
      if (femaleColour == inActiveCardColour) {
        femaleColour = backgroundColour;
        maleColour = inActiveCardColour;
      } else {
        femaleColour = inActiveCardColour;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateGenderColour(1);
                      });
                    },
                    child: BaseCard(
                        colour: Color(maleColour),
                        childCard: SexCard(
                          text: "MALE",
                          textColour: textColour,
                          textFontSize: textFontSize,
                          iconProp: Icon(
                            FontAwesomeIcons.mars,
                            size: iconSize,
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateGenderColour(2);
                      });
                    },
                    child: BaseCard(
                      colour: Color(femaleColour),
                      childCard: SexCard(
                        text: "FEMALE",
                        textFontSize: textFontSize,
                        textColour: textColour,
                        iconProp: Icon(
                          FontAwesomeIcons.venus,
                          size: iconSize,
                        ),
                      ),
                    ),
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
