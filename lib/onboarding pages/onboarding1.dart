import 'package:challenge_1/onboarding%20pages/onboarding2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';

class OnBoarding1 extends StatelessWidget {

   OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5EBED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 45.0, right: 45),
          child: Stack(
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo1.png',
                    fit: BoxFit.contain,),
                  SizedBox(height: 21),
                  Text('HEALTH COVERAGE',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xff4177A3),
                    ),),],),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  OnBoarding2()),
                  );
                },
                child: Container(alignment: const Alignment(1.2,0.95),

                  child: Image.asset('assets/images/Frame.png',
                    color: Color(0xff4177A3),
                  width: 11.98,
                  height: 20.79,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


