import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';

class Home extends StatelessWidget {
  final Widget child;

  const Home({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: child,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColors.dark_gray),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
