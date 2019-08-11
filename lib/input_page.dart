import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

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
  int weight = 60;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kWidgetColor
                        : kInactiveCardColour,
                    cardChild: ReusableChild(
                        icon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kWidgetColor
                      : kInactiveCardColour,
                  cardChild: ReusableChild(
                      icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberTextStyle),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.00,
                      max: 220.00,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kWidgetColor,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: kWidgetColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    colour: kWidgetColor,
                  ),
                ),
              ],
            )),
            Container(
                color: kBottomColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight)
          ],
        ));
  }
}
