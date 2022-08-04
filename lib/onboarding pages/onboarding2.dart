import 'package:challenge_1/onboarding%20pages/OnBoarding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/healthy 1.png',
            fit: BoxFit.cover,),

          Positioned(
            bottom: 20,
            right: 15,
            child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OnBoarding3()),
              );
            },
              child: Container(
                width: 11.98,
                height: 20.79,
              alignment: const Alignment(1.2,0.95),
                child: Image.asset('assets/images/Frame.png',
                color: Colors.white,
                width: 11.98,
                height: 20.79,),),
        ),),

            Positioned(bottom: 92,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: Container(width: 276,
                  height: 172,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 57, left: 32, right: 17),
                        child: Text('INDIVIDUAL PLANS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          fontFamily:'OpenSans',),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 7, right: 6),
                        child: Text('Every inidividuals can now get quality health at great price with ease',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                              fontFamily: 'OpenSans',
                              fontSize: 16,),),)
                    ],
                  ),
                ),
              ),
            ),

          Positioned(bottom: 225,
              left: 146,
              child: Image.asset('assets/images/logo2.png')),
          ],
        ),
    ),
    );
  }
}
