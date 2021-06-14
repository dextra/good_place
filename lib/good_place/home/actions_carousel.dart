import 'package:flutter/material.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/bean_card.dart';
import 'package:good_place/widgets/carousel.dart';

class ActionsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Carousel(
        items: [
          BeanCard(
            image: Assets.telavita,
            buttonLabel: 'Saiba mais',
            onTap: () => Navigator.of(context).pushNamed(
              Routes.genericContent,
              arguments: GenericItem(
                title: 'Telavita',
                content: 'Escrever algo aqui',
                imageUrl: 'assets/images/telavita.png',
              ),
            ),
          ),
          BeanCard(
            image: Assets.yoga,
            label: 'Yoga',
            buttonLabel: 'Saiba mais',
            onTap: () => Navigator.of(context).pushNamed(
              Routes.genericContent,
              arguments: GenericItem(
                title: 'Yoga',
                content: 'Escrever algo aqui',
                imageUrl: 'assets/images/yoga.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
