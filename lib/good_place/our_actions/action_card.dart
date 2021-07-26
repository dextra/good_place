import 'package:flutter/material.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/widgets/label.dart';

class ActionCard extends StatelessWidget {
  final GenericItem item;

  const ActionCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            item.imageUrl,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          SizedBox(width: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Label(
                text: item.title,
                labelType: LabelType.mediumTitle,
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Label(
                  text: item.description,
                  labelType: LabelType.mediumText,
                ),
              ),
              SizedBox(height: 25),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
