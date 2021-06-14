import 'package:dashbook/dashbook.dart';
import 'package:good_place/models/news_item.dart';
import 'package:good_place/widgets/news.dart';

class NewsStory {
  final Dashbook dashbook;

  NewsStory(this.dashbook) {
    dashbook.storiesOf('News').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return News(items: [
          NewsItem(title: 'Title 1', description: 'Content 1'),
          NewsItem(title: 'Title 2', description: 'Content 2'),
        ]);
      },
    );
  }
}
