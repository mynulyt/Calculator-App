import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  String text;
  Color? color;
  final VoidCallback onClick;

  CustomButtom({
    super.key,
    required this.onClick,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: color ?? Colors.lightGreen[800],
          ),
          onPressed: onClick,
          child: Text(
            text,
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
