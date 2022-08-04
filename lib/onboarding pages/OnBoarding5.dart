import 'package:challenge_1/onboarding%20pages/OnBoarding4.dart';
import 'package:challenge_1/onboarding%20pages/OnBoarding6.dart';
import 'package:flutter/material.dart';

class OnBoarding5 extends StatelessWidget {
  const OnBoarding5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/A group2.png',
              fit: BoxFit.fill,),

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0.7),
                    Colors.black],),),
            ),
            Container(
                alignment: Alignment(0,0.75),
                child: Image.asset('assets/images/Group 20.png')),

            Positioned(
              bottom: 20,
              right: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding6()),
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
                    MaterialPageRoute(builder: (context) => const OnBoarding4()),
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
