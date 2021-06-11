import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:good_place/theme.dart';

enum ButtonType {
  contained,
  outline,
}

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final ButtonType type;

  const Button({
    this.label,
    this.onTap,
    this.type = ButtonType.contained,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.contained:
        return ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(CustomColors.crazy_green),
            shape: MaterialStateProperty.all(
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
      case ButtonType.outline:
        return OutlinedButton(
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
              backgroundColor: CustomColors.light_green,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
              side: BorderSide(color: CustomColors.crazy_green, width: 2)),
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
        );
      default:
        throw Error();
    }
  }
}
