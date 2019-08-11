import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    cardChild: ReusableChild(
                        icon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colour: Color(widgetColor),
                  cardChild: ReusableChild(
                      icon: FontAwesomeIcons.venus, text: 'FEMALE'),
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

class ReusableChild extends StatelessWidget {
  ReusableChild({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
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
