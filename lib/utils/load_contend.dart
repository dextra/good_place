import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:good_place/models/generic_item.dart';

class LoadContent {
  Future<List<GenericItem>> loadNews() async {
    String data = await rootBundle.loadString('assets/data/news.json');
    return GenericItem.parseList(jsonDecode(data))
      ..sort((a, b) => b.date!.compareTo(a.date!));
  }

  Future<List<GenericItem>> loadActions() async {
    String data = await rootBundle.loadString('assets/data/actions.json');
    return GenericItem.parseList(jsonDecode(data))
      ..sort((a, b) => b.date!.compareTo(a.date!));
  }
}
