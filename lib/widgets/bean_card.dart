import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';

class BeanCard extends StatelessWidget {
  final Widget content;

  BeanCard({this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(Assets.bean),
          content,
        ],
      ),
    );
  }
}
