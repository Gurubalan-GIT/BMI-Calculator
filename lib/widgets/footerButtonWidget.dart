import 'package:bmi_calculator/constants/design-system.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  FooterButton({@required this.text, this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(text, style: kCalculateTextStyle),
        ),
      ),
    );
  }
}
