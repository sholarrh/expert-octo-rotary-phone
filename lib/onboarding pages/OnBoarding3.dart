import 'package:challenge_1/onboarding%20pages/OnBoarding4.dart';
import 'package:challenge_1/onboarding%20pages/onboarding2.dart';
import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/spouse 1.png',
              fit: BoxFit.fill,),
            Container(
              alignment: Alignment(0,0.75),
                child: Image.asset('assets/images/picture3.png')),

            Positioned(
              bottom: 20,
              right: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding4()),
                  );
                },
                child: Container(alignment: const Alignment(1.2,0.95),

                  child: Image.asset('assets/images/Frame.png',
                    color: Color(0xffFFFFFF),
                    width: 11.98,
                    height: 20.79,),),),),

            Positioned(
              top: 20,
              left: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  OnBoarding2()),
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
