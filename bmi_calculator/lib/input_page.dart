// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card_container.dart';
import 'constants.dart';

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
                        Slider(
                          activeColor: activeSliderColor,
                          inactiveColor: inactiveSliderColor,
                          value: changeSliderValue.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double value) {
                            setState(() {
                              changeSliderValue = value.round();
                            });
                          },
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
              children: const [
                Expanded(
                  child: CardContainer(
                    backgroundColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    backgroundColor: activeCardColor,
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
          )
        ],
      ),
    );
  }
}



// Container(
        // height: 200.0,
        // width: 170.0,
//         margin: EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//           color: Colors.red,
//           // color: const activeCardColor,
//           borderRadius: BorderRadius.circular(10.0),  
//         ),
//       )