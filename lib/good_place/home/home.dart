import 'package:flutter/material.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:good_place/widgets/header.dart';

class Home extends StatelessWidget {
  final Widget child;

  const Home({this.child});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
}
