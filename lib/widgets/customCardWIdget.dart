import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.color, this.cardChild});
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF1D1E33)),
    ));
  }
}
