import 'package:challenge_1/login2.dart';
import 'package:challenge_1/onboarding%20pages/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SignUp_page extends StatelessWidget {
  const SignUp_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 37, left: 38, top: 214),
                    child: Image.asset('assets/images/Health _Two Color 1.png'),
                  ),

                  Text('Health Coverage',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      fontFamily: 'OpenSans',
                      color: Color(0xff000000),
                    ),),

                  SizedBox(height: 7),

                  Text('We offer business/company services at \n competitive rates, get intouch with us for a \n quote ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff858585),
                    ),),
                  SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.only(left: 12,top: 63, right: 12, bottom: 6),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login2()),
                        );
                      },
                      child: Container(width: 335,
                        height: (52),
                        decoration: BoxDecoration(
                          color: Color(0xff046791),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff046791), width: 4,),),
                        child: Center(
                          child: Text('Get Started',
                            textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12,top:6, right: 12, bottom: 41),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      child: Container(width: 335,
                        height: (52),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff046791),width: 2),
                        ),
                        child: Center(
                          child: Text('Log In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'JosefinSans',
                              color: Color(0xff046791),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                        ),
                      ),
                    ),
                  ),

                ],
            ),
          ),
        ),
      ),
    );
  }
}
