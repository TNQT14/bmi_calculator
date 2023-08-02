import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/component/icon_content.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:bmi_calculator/component/round_icon_button.dart';
import 'package:bmi_calculator/constants/app_styles.dart';
import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      appBar: AppBar(
        // backgroundColor: AppColors.cetaceanBlue,
        title: const Center(child: Text("BMI CALCULATOR")),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.history),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(onPressed: (){},
           icon: const Icon(Icons.refresh))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColour,
                    cardChild: IconContent(
                      color: Colors.white,
                      icon: Icons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColour,
                    cardChild: IconContent(
                      color: Colors.white,
                      icon: Icons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Height",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text("180",
                          style: kNumberTextStyle,),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),

                      ],
                  ),
                ],
              ),)
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                            'Weight',
                            style: kLabelTextStyle,
                          ),
                          const Text(
                            '60',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon: Icons.add,
                              onPressed: (){}),
                              const SizedBox(width: 10),
                              RoundIconButton(icon: Icons.remove,
                              onPressed: (){})
                            ],
                          ),
                      ],
                    ),),
                ),
              Expanded(
                  child: ReusableCard(
                    color: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                            'Age',
                            style: kLabelTextStyle,
                          ),
                          const Text(
                            '30',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon: Icons.add,
                              onPressed: (){}),
                              const SizedBox(width: 10),
                              RoundIconButton(icon: Icons.remove,
                              onPressed: (){})
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
                onTap: (){},
                buttonTitle: 'CALCULATE'),
        ],
      ),
    );
  }
}