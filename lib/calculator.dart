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
            flex: 1,
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
            flex: 2,
            child: Row(
              children: [
                CustomButtom(onClick: () => {}, text: '9'),
                CustomButtom(onClick: () => {}, text: '9'),

                CustomButtom(onClick: () => {}, text: '9'),
                CustomButtom(onClick: () => {}, text: '9'),
                CustomButtom(onClick: () => {}, text: '9'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
