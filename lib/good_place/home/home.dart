import 'package:flutter/material.dart';
import 'package:good_place/good_place/home/actions_carousel.dart';
import 'package:good_place/good_place/home/first_news.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:good_place/widgets/good_place.dart';

class Home extends StatelessWidget {
  final List<GenericItem> news;
  final bool loading;

  const Home({this.news, this.loading});

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
              Expanded(child: ActionsCarousel()),
              Container(
                height: 650,
                child: FirstNews(news: news),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
