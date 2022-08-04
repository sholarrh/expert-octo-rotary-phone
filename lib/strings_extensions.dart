
import 'dart:ffi';

extension StringExtension on String{
  bool isWhitespace() => this.trim().isEmpty;

  bool isValidDouble() => double.tryParse(this) != null;

  bool isValidInt() => int.tryParse(this) != null;
}