import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInputTheme2{
  TextStyle _buildTextStyle (Color color, {double size = 16.0}){
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w400,
      fontFamily: 'OpenSans',
    );
  }

  OutlineInputBorder _buildBorder (Color color){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      borderSide: BorderSide(
          color: color,
          width: 2.0
      ),
    );
  }

  InputDecorationTheme theme() =>  InputDecorationTheme(
    contentPadding: EdgeInsets.all(14.00),
    floatingLabelBehavior: FloatingLabelBehavior.always,

    //borders
    //enabled and not showing error
    enabledBorder: _buildBorder(Colors.black),
    disabledBorder: _buildBorder(Colors.grey[400]!),
    errorBorder: _buildBorder(Colors.red),
    focusedBorder: _buildBorder(Colors.black),
    focusedErrorBorder: _buildBorder(Colors.red),
    border: _buildBorder(Colors.black),

    //TextStyles
    suffixStyle: _buildTextStyle(Colors.black),
    counterStyle: _buildTextStyle(Colors.grey, size: 12),
    floatingLabelStyle: _buildTextStyle(Colors.black),

    errorStyle: _buildTextStyle(Colors.red),
    helperStyle: _buildTextStyle(Colors.black),
    hintStyle: _buildTextStyle(Color(0xff858585), size: 16),
    labelStyle: _buildTextStyle(Colors.black),
    prefixStyle: _buildTextStyle(Colors.grey),


  );




}