import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(),
          Image.asset(
            "assets/illustrations/Hight.png",
            height: 400,
          ),
          const Spacer(),
          Text(
            "Get a reflection of yourself",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            "True likeness based of your height",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          const Spacer(),
        ],
      )),
    );
  }
}