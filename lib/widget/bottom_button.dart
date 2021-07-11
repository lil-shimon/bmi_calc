import 'package:flutter/material.dart';

import '../constants.dart';
import 'bottom.dart';

/// [onTap], [buttonText] is required
/// this is button for bottom widget
/// [onTap] this button, you will move another route / screen
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonText});

  /// [Function] change route func
  final Function onTap;

  /// [String] text on button
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BottomContainer(
        buttonText: buttonText,
        colour: Color(kBottomContainerColour),
        height: kBottomContainerHeight,
        marginTop: kBottomContainerMarginTop,
      ),
    );
  }
}
