import 'package:flutter/material.dart';
import 'package:good_place/models/news_item.dart';
import 'package:good_place/widgets/news.dart';

class FirstNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: News(
        title: 'Últimas notícias',
        items: [
          NewsItem(
            title: 'Festa junina',
            content: 'Festa junina Festa junina Festa junina',
            date: DateTime.now(),
          ),
          NewsItem(
            title: 'Festa junina',
            content: 'Festa junina Festa junina Festa junina',
            date: DateTime.now(),
          ),
          NewsItem(
            title: 'Festa junina',
            content: 'Festa junina Festa junina Festa junina',
            date: DateTime.now(),
          ),
          NewsItem(
            title: 'Festa junina',
            content: 'Festa junina Festa junina Festa junina',
            date: DateTime.now(),
          ),
          NewsItem(
            title: 'Festa junina',
            content: 'Festa junina Festa junina Festa junina',
            date: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
