import 'package:flutter/material.dart';
import 'package:calculator_app/custom_widget.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _input = '0';
  String _output = '0';
  String _operation = '';
  double _num1 = 0;
  double _num2 = 0;
  bool _shouldResetInput = false;

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'AC') {
        _input = '0';
        _output = '0';
        _operation = '';
        _num1 = 0;
        _num2 = 0;
      } else if (buttonText == 'DEL') {
        if (_input.length > 1) {
          _input = _input.substring(0, _input.length - 1);
        } else {
          _input = '0';
        }
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '*' ||
          buttonText == '/' ||
          buttonText == '%') {
        _num1 = double.parse(_input);
        _operation = buttonText;
        _shouldResetInput = true;
      } else if (buttonText == '=') {
        _num2 = double.parse(_input);

        switch (_operation) {
          case '+':
            _output = (_num1 + _num2).toString();
            break;
          case '-':
            _output = (_num1 - _num2).toString();
            break;
          case '*':
            _output = (_num1 * _num2).toString();
            break;
          case '/':
            _output = (_num1 / _num2).toString();
            break;
          case '%':
            _output = (_num1 % _num2).toString();
            break;
        }

        if (_output.endsWith('.0')) {
          _output = _output.substring(0, _output.length - 2);
        }

        _input = _output;
        _operation = '';
      } else if (buttonText == '.') {
        if (!_input.contains('.')) {
          _input += '.';
        }
      } else if (buttonText == '()') {
        if (_input == '0') {
          _input = '(';
        } else if (!_input.contains('(')) {
          _input += '(';
        } else if (!_input.contains(')')) {
          _input += ')';
        }
      } else {
        if (_input == '0' || _shouldResetInput) {
          _input = buttonText;
          _shouldResetInput = false;
        } else {
          _input += buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightGreen[800],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _num1 != 0 ? '$_num1 $_operation' : '',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _input,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomButtom(
                        onClick: () => buttonPressed('AC'),
                        text: 'AC',
                        color: Colors.grey[600],
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('()'),
                        text: '()',
                        color: Colors.lightGreen[500],
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('%'),
                        text: '%',
                        color: Colors.lightGreen[500],
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('/'),
                        text: '/',
                        color: Colors.lightGreen[500],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      CustomButtom(
                        onClick: () => buttonPressed('7'),
                        text: '7',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('8'),
                        text: '8',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('9'),
                        text: '9',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('*'),
                        text: '*',
                        color: Colors.lightGreen[500],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      CustomButtom(
                        onClick: () => buttonPressed('4'),
                        text: '4',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('5'),
                        text: '5',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('6'),
                        text: '6',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('-'),
                        text: '-',
                        color: Colors.lightGreen[500],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      CustomButtom(
                        onClick: () => buttonPressed('1'),
                        text: '1',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('2'),
                        text: '2',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('3'),
                        text: '3',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('+'),
                        text: '+',
                        color: Colors.lightGreen[500],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      CustomButtom(
                        onClick: () => buttonPressed('0'),
                        text: '0',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('.'),
                        text: '.',
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('DEL'),
                        text: 'DEL',
                        color: Colors.red[900],
                      ),
                      CustomButtom(
                        onClick: () => buttonPressed('='),
                        text: '=',
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
