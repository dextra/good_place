import 'package:flutter/material.dart';
import 'package:good_place/models/news_item.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/widgets/label.dart';

class News extends StatelessWidget {
  final List<NewsItem> items;

  const News({@required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(
          text: 'Notícias',
          labelType: LabelType.title,
        ),
        ...items.map(
          (item) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Label(
                          text: item.title,
                          labelType: LabelType.cardTitle,
                        ),
                        SizedBox(height: 10),
                        Label(
                          text: item.content,
                          labelType: LabelType.cardBody,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: CustomColors.light_green),
                ),
              ),
              Container(
                height: 1,
                color: CustomColors.medium_gray,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
