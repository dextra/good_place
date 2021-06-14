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
              Image.asset(image, height: 200),
              if (label != null)
                Label(
                  text: label,
                  labelType: LabelType.mediumTitle,
                ),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          child: Button(
            label: buttonLabel,
            type: ButtonType.outline,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
