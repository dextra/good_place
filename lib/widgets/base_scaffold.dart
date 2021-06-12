import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/widgets/header.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Header(),
              SizedBox(height: 30),
              Container(
                height: 1,
                color: CustomColors.dark_gray,
              ),
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.all(10), child: child),
            ],
          ),
        ],
      ),
    );
  }
}
