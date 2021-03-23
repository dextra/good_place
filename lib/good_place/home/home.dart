import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:good_place/widgets/header.dart';
import 'package:good_place/widgets/label.dart';

class Home extends StatelessWidget {
  final Widget child;

  const Home({this.child});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Label(
                  text: 'Liga\ndo\nBEM',
                  labelType: LabelType.bitTitle,
                  textAlign: TextAlign.right,
                ),
              ),
              Image.asset(Assets.ligaDoBem),
              SizedBox(height: 200),
            ],
          ),
          SizedBox(height: 120),
          Label(
            text: 'Últimas ações',
            labelType: LabelType.title,
          )
        ],
      ),
    );
  }
}
