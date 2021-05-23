import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  QuestionController _qnController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Colors.purple[800],
                  Colors.purple[700],
                  Colors.purple[600],
                  Colors.purple[400],
                ],
              ),
            ),
          ),
          Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                'Score',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: kSecondaryColor,
                    ),
              ),
              Spacer(),
              Text(
                '${_qnController.numOfCorrectAns * 10} / ${_qnController.questions.length * 10}',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
