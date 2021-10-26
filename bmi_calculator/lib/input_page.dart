// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card_container.dart';


const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
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
              children: const [
                Expanded(
                  child: CardContainer(
                    backgroundColor: cardColor,
                    cardChild: IconAndText(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    backgroundColor: cardColor,
                    cardChild: IconAndText(
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
              children: const [
                Expanded(
                  child: CardContainer(
                    backgroundColor: cardColor,
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
                    backgroundColor: cardColor,
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    backgroundColor: cardColor,
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
//           // color: const cardColor,
//           borderRadius: BorderRadius.circular(10.0),  
//         ),
//       )