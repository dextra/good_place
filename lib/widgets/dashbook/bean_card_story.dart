import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:good_place/widgets/bean_card.dart';

class BeanCardStory {
  final Dashbook dashbook;

  BeanCardStory(this.dashbook) {
    dashbook.storiesOf('Bean card').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return BeanCard(
          content: Container(
            color: Colors.cyan,
            width: 100,
            height: 100,
          ),
        );
      },
    );
  }
}
