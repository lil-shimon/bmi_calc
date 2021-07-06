import 'package:bmi_calculator/widget/sexCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/widget/base_card.dart';
import 'package:bmi_calculator/widget/bottom.dart';

import '../constants.dart';

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
                        ? Color(kBackgroundColour)
                        : Color(kInActiveCardColour),
                    childCard: SexCard(
                      text: "MALE",
                      textColour: kTextColour,
                      textFontSize: kTextFontSize,
                      iconProp: Icon(
                        FontAwesomeIcons.mars,
                        size: kIconSize,
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
                        ? Color(kBackgroundColour)
                        : Color(kInActiveCardColour),
                    childCard: SexCard(
                      text: "FEMALE",
                      textFontSize: kTextFontSize,
                      textColour: kTextColour,
                      iconProp: Icon(
                        FontAwesomeIcons.venus,
                        size: kIconSize,
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
                    colour: Color(kBackgroundColour),
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
                    colour: Color(kBackgroundColour),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    colour: Color(kBackgroundColour),
                  ),
                ),
              ],
            ),
          ),
          BottomContainer(
            colour: Color(kBottomContainerColour),
            height: kBottomContainerHeight,
            marginTop: kBottomContainerMarginTop,
          )
        ],
      ),
    );
  }
}
