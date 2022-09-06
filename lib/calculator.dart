import 'package:flutter/material.dart';
import 'buttons.dart';

class Calculator_page extends StatefulWidget {
  const Calculator_page({Key? key}) : super(key: key);

  @override
  State<Calculator_page> createState() => _Calculator_pageState();
}

class _Calculator_pageState extends State<Calculator_page> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/' ||
        btnVal == '%') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '%') {
        res = (firstNum % secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
        backgroundColor: Color(0xFF23252C),
      ),
      body: Container(
        color: Color(0xFF23252C),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      history,
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xC730323A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      res,
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  number: 'AC',
                  numberColor: Color(0xFF4D9385),
                  onPress: () {
                    btnOnClick('AC');
                  },
                ),
                CalculatorButton(
                  number: '+/-',
                  numberColor: Color(0xFF4D9385),
                  onPress: () {
                    btnOnClick('+/-');
                  },
                ),
                CalculatorButton(
                  number: '%',
                  numberColor: Color(0xFF4D9385),
                  onPress: () {
                    btnOnClick('%');
                  },
                ),
                CalculatorButton(
                  number: '/',
                  numberColor: Color(0xFFB25F5E),
                  onPress: () {
                    btnOnClick('/');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  number: '1',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('1');
                  },
                ),
                CalculatorButton(
                  number: '2',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('2');
                  },
                ),
                CalculatorButton(
                  number: '3',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('3');
                  },
                ),
                CalculatorButton(
                  number: 'X',
                  numberColor: Color(0xFFB25F5E),
                  onPress: () {
                    btnOnClick('X');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  number: '4',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('4');
                  },
                ),
                CalculatorButton(
                  number: '5',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('5');
                  },
                ),
                CalculatorButton(
                  number: '6',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('6');
                  },
                ),
                CalculatorButton(
                  number: '-',
                  numberColor: Color(0xFFB25F5E),
                  onPress: () {
                    btnOnClick('-');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  number: '7',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('7');
                  },
                ),
                CalculatorButton(
                  number: '8',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('8');
                  },
                ),
                CalculatorButton(
                  number: '9',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('9');
                  },
                ),
                CalculatorButton(
                  number: '+',
                  numberColor: Color(0xFFB25F5E),
                  onPress: () {
                    btnOnClick('+');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  number: '0',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('0');
                  },
                ),
                CalculatorButton(
                  number: '00',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('00');
                  },
                ),
                CalculatorButton(
                  number: '.',
                  numberColor: Colors.white,
                  onPress: () {
                    btnOnClick('.');
                  },
                ),
                CalculatorButton(
                  number: '=',
                  numberColor: Color(0xFFB25F5E),
                  onPress: () {
                    btnOnClick('=');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
