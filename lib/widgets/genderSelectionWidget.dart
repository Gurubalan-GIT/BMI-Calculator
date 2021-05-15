import 'package:bmi_calculator/constants/design-system.dart';
import 'package:flutter/material.dart';

class ChooseGenderWidget extends StatelessWidget {
  ChooseGenderWidget({@required this.text, this.icon});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(text, style: globalCardTextStyle)
      ],
    );
  }
}
