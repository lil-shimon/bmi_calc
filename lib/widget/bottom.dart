import 'package:flutter/material.dart';

/// require height, colour, marginTop
class BottomContainer extends StatelessWidget {

  BottomContainer({ @required this.height, @required this.colour, @required this.marginTop});

  final double height;
  final Color colour;
  final double marginTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colour,
      margin: EdgeInsets.only(top: marginTop),
      width: double.infinity,
      height: height,
    );
  }
}
