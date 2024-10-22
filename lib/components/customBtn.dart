import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.textData,
      this.onPressed,
      required this.couleur});
  final String textData;
  final void Function()? onPressed;
  final Color couleur;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: couleur, foregroundColor: Colors.white),
        child: Text(
          textData,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }
}
