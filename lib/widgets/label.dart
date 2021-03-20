import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';

class Label extends StatelessWidget {
  final String text;
  final LabelType labelType;

  const Label({
    @required this.text,
    this.labelType = LabelType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: labelType.style(context),
    );
  }
}

enum LabelType { text, topMenu, title }

extension _LabelStyle on LabelType {
  TextStyle style(BuildContext context) {
    switch (this) {
      case LabelType.text:
        return TextStyle(
          fontSize: 12,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.topMenu:
        return TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w300,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.title:
        return TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w300,
          color: CustomColors.dark_gray,
        );
        break;
      default:
        return TextStyle(
          fontSize: 12,
        );
    }
  }
}