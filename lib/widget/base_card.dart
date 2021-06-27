import 'package:flutter/material.dart';

/// require colour
class BaseCard extends StatelessWidget {

  BaseCard({ @required this.colour });

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
