import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/label.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          child: Image.asset(Assets.logo),
          padding: EdgeInsets.only(top: 10),
        ),
        _MenuItem(label: 'Quem somos'),
        _MenuItem(label: 'O que fazemos'),
        _MenuItem(label: 'Últimas ações'),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String label;
  final Function navigateTo;

  const _MenuItem({this.label, this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateTo,
      child: Label(
        text: label,
        labelType: LabelType.topMenu,
      ),
    );
  }
}
