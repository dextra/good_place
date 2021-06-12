import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';

class Label extends StatelessWidget {
  final String text;
  final LabelType labelType;
  final TextAlign textAlign;

  const Label({
    @required this.text,
    this.labelType = LabelType.text,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: labelType.style(context),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}

enum LabelType {
  text,
  topMenu,
  title,
  bigTitle,
  mediumTitle,
  littleTitle,
  bigTitleBold,
  cardDate,
  cardTitle,
  cardBody,
  cardBodyTitle,
  link
}

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
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.title:
        return TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w300,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.bigTitle:
        return TextStyle(
          fontSize: 70,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.mediumTitle:
        return TextStyle(
          fontSize: 50,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.littleTitle:
        return TextStyle(
          fontSize: 35,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.bigTitleBold:
        return TextStyle(
          fontSize: 80,
          color: CustomColors.dark_gray,
          fontWeight: FontWeight.w600,
        );
        break;
      case LabelType.cardDate:
        return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.cardTitle:
        return TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.cardBody:
        return TextStyle(
          fontSize: 18,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.cardBodyTitle:
        return TextStyle(
          fontSize: 18,
          color: CustomColors.dark_gray,
        );
        break;
      case LabelType.link:
        return TextStyle(
          fontSize: 18,
          color: CustomColors.link,
        );
        break;
      default:
        return TextStyle(
          fontSize: 12,
        );
    }
  }
}
