import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/button.dart';

class BeanCard extends StatelessWidget {
  final String image;
  final String buttonLabel;
  final VoidCallback onTap;

  BeanCard({
    this.image,
    this.buttonLabel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(Assets.bean),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(image),
              Button(
                label: buttonLabel,
                type: ButtonType.outline,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
