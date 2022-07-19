import 'package:bmicalculator/onboarding_screens/OnBoardingScreen1.dart';
import 'package:bmicalculator/onboarding_screens/OnBoardingScreen2.dart';
import 'package:bmicalculator/onboarding_screens/OnBoardingScreen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'HomePage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Keep track of which page were on
  final PageController _controller = PageController();

  //Keep track if were on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              OnBoardingScreen1(),
              OnBoardingScreen2(),
              OnBoardingScreen3(),
            ],
          ),

          //Dot Indicators
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Skip Button
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 40, 71),
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),

                // Dot Indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                // Next Button
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ));
                        },
                        child: const Text(
                          'DONE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 1, 40, 71),
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                              color: Color.fromARGB(255, 1, 40, 71),
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
