import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:good_place/widgets/base_scaffold.dart';

class BaseScaffoldStory {
  final Dashbook dashbook;

  BaseScaffoldStory(this.dashbook) {
    dashbook.storiesOf('Scaffold').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return BaseScaffold(
          child: Text('oi'),
        );
      },
    );
  }
}
