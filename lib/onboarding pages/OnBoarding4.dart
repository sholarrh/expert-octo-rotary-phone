import 'package:challenge_1/onboarding%20pages/OnBoarding3.dart';
import 'package:challenge_1/onboarding%20pages/OnBoarding5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/family11.png',
              fit: BoxFit.fill,),
            Container(
                alignment: Alignment(0,0.75),
                child: Image.asset('assets/images/picture4.png')),

            Positioned(
              bottom: 20,
              right: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding5()),
                  );
                },
                child: Container(alignment: const Alignment(1.2,0.95),

                  child: Image.asset('assets/images/Frame.png',
                    color: Color(0xffFFFFFF),
                    width: 11.98,
                    height: 20.79,),
                ),
              ),
            ),

            Positioned(
              top: 20,
              left: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding3()),
                  );
                },
                child: Container(alignment: const Alignment(1.2,0.95),

                  child: Image.asset('assets/images/Vector.png',
                    width: 15,
                    height: 15,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
