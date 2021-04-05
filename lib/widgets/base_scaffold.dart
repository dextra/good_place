import 'dart:math';

import 'package:flutter/material.dart';
import 'package:good_place/good_place/home/image_painter.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/header.dart';
import 'package:good_place/widgets/label.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;
  final String title;

  const BaseScaffold({this.child, this.title = 'liga do\nbem'});

  @override
  Widget build(BuildContext context) {
    final maxScreenSize = max(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    final ballSize = maxScreenSize * 0.5;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Positioned(
                right: 0,
                child: Container(
                  width: ballSize,
                  height: ballSize,
                  child: CustomPaint(
                    painter: ImagePainter(),
                  ),
                ),
              ),
              Positioned(
                right: ballSize * 0.6,
                top: ballSize * 0.2,
                child: Align(
                  child: Image.asset(Assets.personWithHeart),
                  alignment: Alignment.bottomLeft,
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    SizedBox(height: 100),
                    Padding(
                      padding: EdgeInsets.only(left: maxScreenSize * 0.05),
                      child: Label(
                        text: title,
                        labelType: LabelType.bigTitle,
                      ),
                    ),
                    SizedBox(height: 120),
                    child,
                  ],
                ),
                margin: EdgeInsets.all(60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
