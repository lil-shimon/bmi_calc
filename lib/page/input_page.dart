import 'package:bmi_calculator/calclator_brain.dart';
import 'package:bmi_calculator/widget/bottom_button.dart';
import 'package:bmi_calculator/widget/results_page.dart';
import 'package:bmi_calculator/widget/round_icon_button.dart';
import 'package:bmi_calculator/widget/sexCard.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/widget/base_card.dart';

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

  /// 身長ステート
  int height = 180;

  /// 体重ステート
  int weight = 60;

  /// 年齢ステート
  int age = 20;

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
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kBoldTextStyle,
                            ),
                            Text(
                              "cm",
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xff8d8e98),
                            thumbColor: Color(0xffeb1555),

                            /// transparent -> 0x15
                            /// [overlayColor] -> opacity 16%
                            overlayColor: Color(0x29eb1555),
                            thumbShape: (RoundSliderThumbShape(
                                enabledThumbRadius: 15.0)),
                            overlayShape:
                                (RoundSliderOverlayShape(overlayRadius: 30.0)),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
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
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kBoldTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    colour: Color(kBackgroundColour),
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kBoldTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                    () {
                                      age--;
                                    },
                                  );
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: "CALCULATE",
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    calculateBmi: calc.calculateBMI(),
                    result: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
