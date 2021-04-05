import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:good_place/widgets/event_card.dart';
import 'package:good_place/models/event.dart';

class EventCardStory {
  final Dashbook dashbook;

  EventCardStory(this.dashbook) {
    dashbook.storiesOf('Action card').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Container(
          child: Row(
            children: [
              Expanded(
                child: EventCard(
                  event: Event(
                    title: 'Title',
                    text: 'Text',
                    imageURL:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Google_Chrome_icon_%28September_2014%29.svg/1024px-Google_Chrome_icon_%28September_2014%29.svg.png',
                  ),
                ),
              ),
              Expanded(
                child: EventCard(
                  event: Event(
                    title: 'Title',
                    text: 'Text',
                    imageURL:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Google_Chrome_icon_%28September_2014%29.svg/1024px-Google_Chrome_icon_%28September_2014%29.svg.png',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
