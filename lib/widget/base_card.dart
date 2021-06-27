import 'package:flutter/material.dart';

/// require colour
/// optional childCard
class BaseCard extends StatelessWidget {

  BaseCard({ @required this.colour, this.childCard });

  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
