import 'package:calculator_app/custom_widget.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen[800],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    CustomButtom(
                      onClick: () => {},
                      text: 'AC',
                      color: Colors.grey[600],
                    ),
                    CustomButtom(
                      onClick: () => {},
                      text: '()',
                      color: Colors.lightGreen[500],
                    ),

                    CustomButtom(
                      onClick: () => {},
                      text: '%',
                      color: Colors.lightGreen[500],
                    ),
                    CustomButtom(
                      onClick: () => {},
                      text: '/',
                      color: Colors.lightGreen[500],
                    ),
                  ],
                ),

                Row(
                  children: [
                    CustomButtom(onClick: () => {}, text: '7'),
                    CustomButtom(onClick: () => {}, text: '8'),

                    CustomButtom(onClick: () => {}, text: '9'),
                    CustomButtom(
                      onClick: () => {},
                      text: '*',
                      color: Colors.lightGreen[500],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomButtom(onClick: () => {}, text: '4'),
                    CustomButtom(onClick: () => {}, text: '5'),

                    CustomButtom(onClick: () => {}, text: '6'),
                    CustomButtom(
                      onClick: () => {},
                      text: '-',
                      color: Colors.lightGreen[500],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomButtom(onClick: () => {}, text: '1'),
                    CustomButtom(onClick: () => {}, text: '2'),

                    CustomButtom(onClick: () => {}, text: '3'),
                    CustomButtom(
                      onClick: () => {},
                      text: '+',
                      color: Colors.lightGreen[500],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomButtom(onClick: () => {}, text: '0'),
                    CustomButtom(onClick: () => {}, text: '.'),

                    CustomButtom(
                      onClick: () => {},
                      text: 'DEL',
                      color: Colors.red[900],
                    ),
                    CustomButtom(
                      onClick: () => {},
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
    );
  }
}
