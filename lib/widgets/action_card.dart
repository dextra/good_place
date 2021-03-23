import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';

class ActionCard extends StatelessWidget {
  final Widget child;
  final double height;

  ActionCard({@required this.child, this.height = 310});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: height,
      decoration: BoxDecoration(
        color: CustomColors.light_gray,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
