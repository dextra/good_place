import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/bean_card.dart';
import 'package:good_place/widgets/carousel.dart';
import 'package:good_place/widgets/label.dart';

class ActionsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(
          text: 'Ações',
          labelType: LabelType.littleTitle,
        ),
        SizedBox(height: 50),
        Carousel(
          items: [
            BeanCard(
              image: Assets.telavita,
              buttonLabel: 'Saiba mais',
              onTap: () {},
            ),
            BeanCard(
              image: Assets.yoga,
              label: 'Yoga',
              buttonLabel: 'Saiba mais',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
