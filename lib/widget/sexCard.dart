import 'package:flutter/material.dart';

/// required iconProp, textColour, textFontSize
class SexCard extends StatelessWidget {
  SexCard({
    @required this.textColour,
    @required this.textFontSize,
    @required this.iconProp,
  });

  final Color textColour;
  final double textFontSize;
  final Icon iconProp;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconProp,
        SizedBox(
          height: 15.0,
        ),
        Text("MALE",
            style: TextStyle(
              color: textColour,
              fontSize: textFontSize,
            )),
      ],
    );
  }
}
