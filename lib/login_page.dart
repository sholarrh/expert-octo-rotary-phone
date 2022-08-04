import 'package:challenge_1/Email_Field.dart';
import 'package:challenge_1/SignUp_page.dart';
import 'package:challenge_1/login2.dart';
import 'package:challenge_1/password_field.dart';
import 'package:flutter/material.dart';
import 'MyInputTheme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
      primarySwatch: Colors.blue,
      inputDecorationTheme: MyInputTheme().theme(),),
      home:Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 337, left: 26, top: 74, bottom: 9.99),
                  child: GestureDetector(
                          onTap: (){
                          Navigator.push(
                          context,
                      MaterialPageRoute(builder: (context) => const SignUp_page()),
                             );},
                    child: Image.asset('assets/images/image 15.png'),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 285, left: 20,bottom: 11),
                  child: Text('Log In',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xff000000),
                    ),),
                ),

                Image.asset('assets/images/login1.png'),

                Padding(
                  padding: const EdgeInsets.only(top: 10.89,right: 249),
                  child: Text('Email Address',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff858585),),),
                ),

                EmailField(),

                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 279, bottom: 12),
                  child: Text('Password',

                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff858585),),),
                ),

                PasswordField(labelText: 'Enter your Password', obscurePassword: true),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 32, right: 20),
                  child: Container(width: 335,
                    height: (52),
                    decoration: BoxDecoration(
                      color: Color(0xff046791),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xff046791), width: 4,),),
                    child: Center(
                      child: Text('Log In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login2()),
                        );},
                      child: RichText(
                        text: TextSpan(
                          text: 'New Here?',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xff858585),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          children: const <TextSpan>[
                            TextSpan(text: ' Create Account', style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'OpenSans',fontSize: 16,color: Color(0xff046791))),
                          ],
                        ),
                      ),
                    )
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
