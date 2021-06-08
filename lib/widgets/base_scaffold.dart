import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/button.dart';
import 'package:good_place/widgets/header.dart';
import 'package:good_place/widgets/label.dart';

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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.heartBallon,
                          height: 100,
                        ),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Label(
                              text: 'Comitê',
                              labelType: LabelType.bigTitleBold,
                            ),
                            Label(
                              text: 'liga do bem',
                              labelType: LabelType.bigTitle,
                            ),
                            SizedBox(height: 50),
                            Button(
                              label: 'Fale conosco',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      Assets.personWithHeart,
                      height: 900,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
