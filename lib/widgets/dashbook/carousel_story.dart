import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:good_place/widgets/carousel.dart';

class CarouselStory {
  final Dashbook dashbook;

  CarouselStory(this.dashbook) {
    final items = [1, 2, 3]
        .map(
          (item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  )),
            ),
          ),
        )
        .toList();

    dashbook.storiesOf('Carousel').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Container(
          height: 500,
          width: 500,
          child: Carousel(
            items: items,
          ),
        );
      },
    );
  }
}
