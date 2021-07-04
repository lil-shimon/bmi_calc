import 'package:flutter/material.dart';

/// require colour
/// optional childCard
class BaseCard extends StatelessWidget {

  BaseCard({ @required this.colour, this.childCard, this.onPress });

  final Color colour;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
