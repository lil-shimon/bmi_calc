import 'package:flutter/material.dart';

/// TODO: change those types from integer to Color
/// [kBackgroundColour], [kInActiveCardColour] and [kBottomContainerColour]

/// active card colour
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

/// 大きいテキスト定義
const kLargeTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

/// タイトルテキスト定義
const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

/// 結果テキストスタイル（標準）
const kResultNormalTextStyle = TextStyle(
  color: Color(0xff24d876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);


/// 結果BMIテキスト定義
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

/// 結果Bodyテキスト定義
const kBodyTextStyle = TextStyle(
  fontSize: 22.0
);