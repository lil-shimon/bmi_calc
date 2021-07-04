import 'package:bmi_calculator/widget/sexCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

/// 性別オプション
enum SexOption { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

/// this is the page of input option for calc BMI
/// states are maleColour, femaleColour
class _InputPageState extends State<InputPage> {
  /// 選択されている性別
  SexOption selectedGender;

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
                    onPress: () {
                      setState(() {
                        selectedGender = SexOption.male;
                      });
                    },
                    colour: selectedGender == SexOption.male
                        ? Color(backgroundColour)
                        : Color(inActiveCardColour),
                    childCard: SexCard(
                      text: "MALE",
                      textColour: textColour,
                      textFontSize: textFontSize,
                      iconProp: Icon(
                        FontAwesomeIcons.mars,
                        size: iconSize,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    onPress: () {
                      setState(() {
                        selectedGender = SexOption.female;
                      });
                    },
                    colour: selectedGender == SexOption.female
                        ? Color(backgroundColour)
                        : Color(inActiveCardColour),
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
