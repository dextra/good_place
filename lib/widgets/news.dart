import 'dart:math';

import 'package:flutter/material.dart';
import 'package:good_place/models/news_item.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/label.dart';
import 'package:intl/intl.dart';

class News extends StatelessWidget {
  final List<NewsItem> items;
  final String title;
  final bool firstNews;

  const News({
    @required this.items,
    this.title,
    this.firstNews = false,
  });

  @override
  Widget build(BuildContext context) {
    final format = new DateFormat('MMM/yyyy', 'pt_BR');
    final newsCount = firstNews ? min(4, items.length) : items.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              Assets.news,
              width: 70,
            ),
            SizedBox(width: 15),
            Label(
              text: title ?? 'Notícias',
              labelType: LabelType.littleTitle,
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: CustomColors.light_green),
          child: Column(
            children: [
              for (var i = 0; i < newsCount; i++)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Label(
                                    text: items[i].title,
                                    labelType: LabelType.cardTitle,
                                  ),
                                  Label(
                                    text: format.format(items[i].date),
                                    labelType: LabelType.cardDate,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Label(
                                text: items[i].description,
                                labelType: LabelType.cardBody,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (i < items.length - 1)
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Container(
                          height: 1,
                          color: CustomColors.medium_gray,
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
