import 'package:flutter/material.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(),
          Image.asset(
            "assets/illustrations/Questions.png",
            height: 400,
          ),
          const Spacer(),
          Text(
            "Don't question yourself",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            "gKnow whether you are fit",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          const Spacer(),
        ],
      )),
    );
  }
}