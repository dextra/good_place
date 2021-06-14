import 'package:flutter/material.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/widgets/news.dart';

class FirstNews extends StatelessWidget {
  final List<GenericItem> news;

  const FirstNews({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: News(
        title: 'Últimas notícias',
        items: news,
      ),
    );
  }
}
