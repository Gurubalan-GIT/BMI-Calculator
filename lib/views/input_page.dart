import 'package:bmi_calculator/constants/design-system.dart';
import 'package:bmi_calculator/widgets/customCardWIdget.dart';
import 'package:bmi_calculator/widgets/genderSelectionWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: ChooseGenderWidget(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: ChooseGenderWidget(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: CustomCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: globalCardTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text("cm")
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CustomCard(color: activeCardColor)),
                  Expanded(child: CustomCard(color: activeCardColor))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
