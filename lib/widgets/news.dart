import 'package:flutter/material.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/label.dart';
import 'package:intl/intl.dart';

class News extends StatelessWidget {
  final List<GenericItem> items;
  final String? title;

  const News({
    required this.items,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
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
            Expanded(
              child: Label(
                text: title ?? 'Notícias',
                labelType: LabelType.cardTitle,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          height: 520,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: CustomColors.light_green),
          child: ListView(
            children: [
              for (var i = 0; i < items.length; i++)
                _NewCard(
                  item: items[i],
                  showDivisor: i < items.length - 1,
                )
            ],
          ),
        ),
      ],
    );
  }
}

class _NewCard extends StatelessWidget {
  final GenericItem item;
  final bool showDivisor;

  const _NewCard({
    required this.item,
    required this.showDivisor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Label(
                        text: item.title,
                        labelType: LabelType.cardTitle,
                      ),
                      Label(
                        text: new DateFormat('MMM/yyyy', 'pt_BR')
                            .format(item.date!),
                        labelType: LabelType.cardDate,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  if (item.description != null)
                    Label(
                      text: item.description!,
                      labelType: LabelType.cardBody,
                    ),
                ],
              ),
            ),
          ),
        ),
        if (item.content != null && item.content!.isNotEmpty)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Label(
                    text: 'Ler mais',
                    labelType: LabelType.link,
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(
                  Routes.genericContent,
                  arguments: item,
                ),
              ),
            ),
          ),
        if (showDivisor)
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              height: 1,
              color: CustomColors.medium_gray,
            ),
          ),
      ],
    );
  }
}
