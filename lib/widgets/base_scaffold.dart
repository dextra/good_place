import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: Container(
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              child: child,
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
