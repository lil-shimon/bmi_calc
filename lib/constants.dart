import 'package:flutter/material.dart';

/// TODO: change those types from integer to Color
/// [kBackgroundColour], [kInActiveCardColour] and [kBottomContainerColour]
const int kBackgroundColour = 0xff1d1e33;
const int kInActiveCardColour = 0xff111328;
const int kBottomContainerColour = 0xffeb1555;
const double kBottomContainerMarginTop = 10.0;
const double kBottomContainerHeight = 80.0;
const double kIconSize = 80.0;
const double kTextFontSize = 18.0;
const Color kTextColour = Color(0xff8d8e98);

/// 共通テキスト定義
const kLabelTextStyle = TextStyle(
  fontSize: kTextFontSize,
  color: kTextColour,
);

/// 強調テキスト定義
const kBoldTextStyle = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.w900,
);