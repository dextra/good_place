import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        width: double.infinity,
        height: double.infinity,
        child: child,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColors.dark_gray, width: 4),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
