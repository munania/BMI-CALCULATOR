import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(),
          Image.asset(
            "assets/illustrations/Fitness.png",
            height: 400,
          ),
          const Spacer(),
          Text(
            "Track your weight",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            "Be in the best shape of your life",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          const Spacer(),
        ],
      )),
    );
  }
}
