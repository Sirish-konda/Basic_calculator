import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {required this.number, required this.numberColor, required this.onPress});

  final String number;
  final Color numberColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: numberColor,
            backgroundColor: Color(0xFF585A5F),
          ),
          onPressed: onPress,
          child: Text(
            number,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
