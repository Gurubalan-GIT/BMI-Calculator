import 'package:bmi_calculator/widgets/customCardWIdget.dart';
import 'package:bmi_calculator/widgets/footerButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/design-system.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Your Results",
              style: kCalculateTextStyle,
            ),
          ),
          Expanded(flex: 5, child: CustomCard(color: activeCardColor)),
          FooterButton(text: "RE-CALCULATE")
        ],
      ),
    );
  }
}
