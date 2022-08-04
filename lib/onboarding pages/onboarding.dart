import 'package:challenge_1/login_page.dart';
import 'package:challenge_1/onboarding%20pages/OnBoarding3.dart';
import 'package:challenge_1/onboarding%20pages/OnBoarding4.dart';
import 'package:challenge_1/onboarding%20pages/OnBoarding5.dart';
import 'package:challenge_1/onboarding%20pages/OnBoarding6.dart';
import 'package:challenge_1/onboarding%20pages/onboarding1.dart';
import 'package:challenge_1/onboarding%20pages/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  // controller to keep track of what page we are on
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit:StackFit.expand,
        children: [
          PageView(
            controller: _controller,
            children: [
              OnBoarding1(),
              OnBoarding2(),
              OnBoarding3(),
              OnBoarding4(),
              OnBoarding5(),
              OnBoarding6(),
            ],
          ),



          Container(
              alignment: Alignment(0,0.95),
              child: SmoothPageIndicator(controller: _controller, count: 6,
              axisDirection: Axis.horizontal,
              effect: SlideEffect(
                activeDotColor: Color(0xffFFFFFF),
                dotHeight: 8,
                dotWidth: 8,
                dotColor: Colors.grey
              ),))

        ],
      ),
    );
  }
}



