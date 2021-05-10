import 'package:flutter/material.dart';
import 'package:flutter_svg/Flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/icons/bg.svg",
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Text(
                    "Let's Play a Quiz!",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text("Entre your name:"),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kTextFieldColor,
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Start the quiz",
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
