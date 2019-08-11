import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const widgetColor = 0xFF1D1E33;
const bottomColor = Color(0xFFEB1555);

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
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(widgetColor),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colour: Color(widgetColor),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: Color(widgetColor),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: Color(widgetColor),
                )),
                Expanded(
                  child: ReusableCard(
                    colour: Color(widgetColor),
                  ),
                ),
              ],
            )),
            Container(
                color: bottomColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight)
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
