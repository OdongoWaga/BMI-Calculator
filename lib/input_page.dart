import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const widgetColor = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomColor = Color(0xFFEB1555);

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

//  Color maleCardColor = inactiveCardColour;
//  Color femaleCardColour = inactiveCardColour;

  //1 male, 2 female
  /* void updateColour(Gender selectedGender) {
    // Male card
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColour) {
        maleCardColor = widgetColor;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColor = inactiveCardColour;
      }
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = widgetColor;
        maleCardColor = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }

  */

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? widgetColor
                          : inactiveCardColour,
                      cardChild: ReusableChild(
                          icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? widgetColor
                        : inactiveCardColour,
                    cardChild: ReusableChild(
                        icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: widgetColor,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: widgetColor,
                )),
                Expanded(
                  child: ReusableCard(
                    colour: widgetColor,
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
