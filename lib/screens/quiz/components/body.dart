import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/models/quesion.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //TODO achar uma image melhor para o fundo do app
        //SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: kSecondaryColor),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.5,
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(
                        sample_data[0]['question'],
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: kBlackColor,
                            ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: kDefaultPadding),
                        padding: EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          border: Border.all(color: kGrayColor),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '1. Test',
                              style: TextStyle(color: kGrayColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
