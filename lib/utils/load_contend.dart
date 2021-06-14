import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:good_place/models/news_item.dart';

class LoadContent {
  Future<List<NewsItem>> loadNews() async {
    String data = await rootBundle.loadString('assets/data/news.json');
    return NewsItem.parseList(jsonDecode(data));
  }
}
