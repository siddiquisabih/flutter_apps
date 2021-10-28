// ignore_for_file: file_names

import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card_container.dart';
import 'constants.dart';
import 'icon_with_button.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  Gender? selectedGender;
  int changeSliderValue = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    onCardTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    backgroundColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const IconAndText(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    onCardTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    backgroundColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const IconAndText(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    backgroundColor: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: lableStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              changeSliderValue.toString(),
                              style: numberLableStyle,
                            ),
                            const Text(
                              'cm',
                              style: lableStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: const Color(0xFFEB1555),
                            overlayColor: const Color(0x1FEB1555),
                            inactiveTrackColor: inactiveSliderColor,
                            activeTrackColor: Colors.white,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: changeSliderValue.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double value) {
                              setState(() {
                                changeSliderValue = value.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    backgroundColor: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: lableStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberLableStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconName: FontAwesomeIcons.minus,
                              buttonEvent: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButton(
                              iconName: FontAwesomeIcons.plus,
                              buttonEvent: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    backgroundColor: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: lableStyle,
                        ),
                        Text(
                          age.toString(),
                          style: numberLableStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconName: FontAwesomeIcons.minus,
                              buttonEvent: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButton(
                              iconName: FontAwesomeIcons.plus,
                              buttonEvent: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              child: const Text('Calculate'),
            ),
          )
        ],
      ),
    );
  }
}
