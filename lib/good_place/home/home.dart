import 'dart:js';

import 'package:flutter/material.dart';
import 'package:good_place/good_place/home/actions_carousel.dart';
import 'package:good_place/good_place/home/first_news.dart';
import 'package:good_place/models/event.dart';
import 'package:good_place/models/news_item.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:good_place/widgets/good_place.dart';
import 'package:good_place/widgets/news.dart';

class Home extends StatelessWidget {
  final List<Event> events;
  final bool loading;

  const Home({this.events, this.loading});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoodPlace(),
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FirstNews(),
              ActionsCarousel(),
            ],
          ),
        ],
      ),
    );
  }
}
