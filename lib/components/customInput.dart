import 'package:flutter/material.dart';

class Custominput extends StatelessWidget {
  const Custominput({
    super.key,
    required this.placeholderText,
    required this.labelText,
    required this.obscurText,
    this.icon,
  });

  final String placeholderText;
  final String labelText;
  final bool obscurText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscurText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15.0),
        hintText: placeholderText,
        labelText: labelText,
        prefixIcon: icon,
        floatingLabelBehavior: FloatingLabelBehavior.never, // Display hintText
      ),
      keyboardType:
          obscurText ? TextInputType.visiblePassword : TextInputType.text,
    );
  }
}
