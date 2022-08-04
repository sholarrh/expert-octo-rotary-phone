import 'package:challenge_1/login_page.dart';
import 'package:challenge_1/password_field.dart';
import 'package:flutter/material.dart';
import 'Email_Field.dart';
import 'MyInpputTheme2.dart';
import 'MyInputTheme.dart';

class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: MyInputTheme2().theme(),),
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 337, left: 26, top: 58, bottom: 9.99),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );},
                    child: Image.asset('assets/images/image 15.png'),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 14.32,right: 267.67),
                  child: Text('First Name',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffBDBDBD),),),
                ),

                NameField(labelText: 'Enter your First name'),

                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 272.1),
                  child: Text('Last Name',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff858585),),),
                ),

                NameField(labelText: 'Enter your First name'),

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
                  padding: const EdgeInsets.only(top: 10.89,right: 249),
                  child: Text('Phone Number',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff858585),),),
                ),

                NumberField(labelText: 'Enter your phone number'),

                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 224.09, bottom: 12),
                  child: Text('Create Password',

                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff858585),),),
                ),

                PasswordField(labelText: 'Enter your Password', obscurePassword: true),

                Padding(
                  padding: const EdgeInsets.only(left: 21.64, right: 201.84),
                  child: Text('minimum of 8 characters',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff858585),),),),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 32, right: 20),
                  child: Container(width: 335,
                    height: (52),
                    decoration: BoxDecoration(
                      color: Color(0xff046791),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xff046791), width: 4,),),
                    child: Center(
                      child: Text('Create Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,),),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 12),
                  child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xff858585),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          children: const <TextSpan>[
                            TextSpan(text: ' Log in', style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'OpenSans',fontSize: 16,color: Color(0xff046791))),],),)),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
