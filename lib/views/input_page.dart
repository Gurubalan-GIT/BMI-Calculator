import 'package:bmi_calculator/widgets/customCardWIdget.dart';
import 'package:bmi_calculator/widgets/genderSelectionWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const customCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomCard(
                    color: customCardColor,
                    cardChild: ChooseGenderWidget(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                  CustomCard(
                    color: customCardColor,
                    cardChild: ChooseGenderWidget(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  )
                ],
              ),
            ),
            CustomCard(color: customCardColor),
            Expanded(
              child: Row(
                children: [
                  CustomCard(color: customCardColor),
                  CustomCard(color: customCardColor)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEB1555),
              ),
              child: Center(
                child: Text("Calculate your BMI"),
              ),
            )
          ],
        ));
  }
}
