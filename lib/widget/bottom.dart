import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

/// require height, colour, marginTop
class BottomContainer extends StatelessWidget {
  BottomContainer(
      {@required this.height,
      @required this.colour,
      @required this.marginTop,
      @required this.buttonText});

  final double height;
  final Color colour;
  final double marginTop;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          buttonText,
          style: kLargeTextStyle,
        ),
      ),
      color: colour,
      padding: EdgeInsets.only(bottom: 25.0),
      margin: EdgeInsets.only(top: marginTop),
      width: double.infinity,
      height: height,
    );
  }
}
