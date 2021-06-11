import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/button.dart';
import 'package:good_place/widgets/label.dart';

class BeanCard extends StatelessWidget {
  final String image;
  final String label;
  final String buttonLabel;
  final VoidCallback onTap;

  BeanCard({
    @required this.image,
    @required this.buttonLabel,
    @required this.onTap,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(Assets.bean),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: 250),
              if (label != null)
                Label(
                  text: label,
                  labelType: LabelType.bigTitle,
                ),
            ],
          ),
        ),
        Positioned(
          bottom: 150,
          child: Button(
            label: buttonLabel,
            type: ButtonType.outline,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
