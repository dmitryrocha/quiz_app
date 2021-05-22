import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getRigthColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return kGreenColor;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getRightIcon() {
            return getRigthColor() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: getRigthColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${index + 1}. $text',
                    style: TextStyle(color: getRigthColor(), fontSize: 16),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getRigthColor() == kGrayColor
                          ? Colors.transparent
                          : getRigthColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getRigthColor()),
                    ),
                    child: getRigthColor() == kGrayColor
                        ? null
                        : Icon(
                            getRightIcon(),
                            size: 16,
                          ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
