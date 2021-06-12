import 'package:flutter/material.dart';
import 'package:good_place/models/news_item.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/label.dart';
import 'package:intl/intl.dart';

class News extends StatelessWidget {
  final List<NewsItem> items;
  final String title;

  const News({@required this.items, this.title});

  @override
  Widget build(BuildContext context) {
    final format = new DateFormat('MMM/yyyy');
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
            children: items
                .map(
                  (item) => Column(
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
                                      text: item.title,
                                      labelType: LabelType.cardTitle,
                                    ),
                                    Label(
                                      text: format.format(item.date),
                                      labelType: LabelType.cardDate,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Label(
                                  text: item.content,
                                  labelType: LabelType.cardBody,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Container(
                          height: 1,
                          color: CustomColors.medium_gray,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
