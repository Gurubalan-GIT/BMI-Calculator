import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [CustomCard(color: Color(0xFF1D1E33)), CustomCard(color: Color(0xFF1D1E33))],
              ),
            ),
            CustomCard(color: Color(0xFF1D1E33)),
            Expanded(
              child: Row(
                children: [CustomCard(color: Color(0xFF1D1E33)), CustomCard(color: Color(0xFF1D1E33))],
              ),
            ),
          ],
        ));
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.color})
  Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF1D1E33)),
    ));
  }
}
