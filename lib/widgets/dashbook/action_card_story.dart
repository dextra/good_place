import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:good_place/widgets/action_card.dart';

class ActionCardStory {
  final Dashbook dashbook;

  ActionCardStory(this.dashbook) {
    dashbook.storiesOf('Action card').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Container(
          color: Colors.green,
          child: Row(
            children: [
              Expanded(
                child: ActionCard(child: Text('123')),
              ),
              Expanded(
                child: ActionCard(child: Text('456')),
              ),
              Expanded(
                child: ActionCard(child: Text('123')),
              ),
            ],
          ),
        );
      },
    );
  }
}
