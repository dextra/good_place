import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:good_place/theme.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const Button({this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(CustomColors.crazy_green),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(color: CustomColors.crazy_green),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColors.dark_gray,
          ),
        ),
      ),
      onPressed: onTap,
    );
  }
}
