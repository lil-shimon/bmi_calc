import 'package:flutter/material.dart';

/// required iconProp, textColour, textFontSize, text
class SexCard extends StatelessWidget {
  SexCard({
    @required this.textColour,
    @required this.textFontSize,
    @required this.iconProp,
    @required this.text,
  });

  final Color  textColour;
  final double textFontSize;
  final Icon   iconProp;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconProp,
        SizedBox(
          height: 15.0,
        ),
        Text(text,
            style: TextStyle(
              color: textColour,
              fontSize: textFontSize,
            )),
      ],
    );
  }
}
