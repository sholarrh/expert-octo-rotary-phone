import 'package:flutter/material.dart';

import 'strings_extensions.dart';


class PasswordField extends StatelessWidget {
  String labelText;
  bool obscurePassword;
  PasswordField({Key? key,required this.labelText,required this.obscurePassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setter) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            validator: (s) {
              if (s! .isWhitespace()) {
                return 'This is a required field';
              }
            },
            obscureText: obscurePassword,

            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(

              // an empty helper does not an allow the field to grow in height when an
              //error is displayed else, the contents of the screen might go down.
              helperText: "",
              //this tells what the form field is for
              hintText: labelText,
              filled: false,
              fillColor:Color(0xffF5F6FA),

              // this is a good place to show an icon at the end or beginning of the
              //field using prefix or suffix icon
              suffixIcon: IconButton(
                onPressed: () => setter(() => obscurePassword = !obscurePassword),
                icon: Icon(
                  obscurePassword ? Icons.visibility: Icons.visibility_off,
                  color: Color(0xff111111),
                size: 24,),
              ),
            ),

          ),
        );
      }
    );
  }
}

class NameField extends StatelessWidget {
  String labelText;

  NameField({Key? key,required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (context, setter) {
          return Padding(
            padding: const EdgeInsets.only(left: 22.5, right: 20.5),
            child: TextFormField(
              validator: (s) {
                if (s! .isWhitespace()) {
                  return 'This is a required field';
                }
              },
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                // an empty helper does not an allow the field to grow in height when an
                //error is displayed else, the contents of the screen might go down.
                helperText: "",
                //this tells what the form field is for
                hintText: labelText,
              ),
            ),
          );
        }
    );
  }
}

class NumberField extends StatelessWidget {
  String labelText;

  NumberField({Key? key,required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (context, setter) {
          return Padding(
            padding: const EdgeInsets.only(left: 22.5, right: 20.5),
            child: TextFormField(
              validator: (s) {
                if (s! .isWhitespace()) {
                  return 'This is a required field';
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // an empty helper does not an allow the field to grow in height when an
                //error is displayed else, the contents of the screen might go down.
                helperText: "",
                //this tells what the form field is for
                hintText: labelText,
              ),
            ),
          );
        }
    );
  }
}


