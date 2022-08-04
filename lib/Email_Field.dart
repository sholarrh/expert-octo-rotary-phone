import 'package:flutter/material.dart';
import 'MyInputTheme.dart';
import 'package:flutter/services.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 6),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(

          helperText: '',
          hintText: 'Enter your Email Address',
        ),
      ),
    );
  }
}

