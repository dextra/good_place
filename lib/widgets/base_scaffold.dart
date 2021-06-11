import 'package:flutter/material.dart';
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
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 20),
                Header(),
                SizedBox(height: 30),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
