import 'package:flutter/material.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/label.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context).settings.name;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          child: Image.asset(Assets.logo),
          padding: EdgeInsets.only(top: 10),
        ),
        SizedBox(width: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _MenuItem(
              label: 'Quem somos',
              selected: routeName == Routes.whoWeAre,
            ),
            SizedBox(width: 60),
            _MenuItem(
              label: 'Notícias',
              selected: routeName == Routes.whatWeDo,
            ),
            SizedBox(width: 60),
            _MenuItem(
              label: 'Ações',
              selected: routeName == Routes.ourActions,
            ),
            SizedBox(width: 60),
            _MenuItem(
              label: 'Sugestões',
              selected: routeName == Routes.ourActions,
            ),
          ],
        ),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String label;
  final Function navigateTo;
  final bool selected;

  const _MenuItem({this.label, this.navigateTo, this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateTo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Label(
            text: label.toUpperCase(),
            labelType: LabelType.topMenu,
          ),
          Visibility(
            visible: selected,
            child: Container(
              margin: EdgeInsets.only(top: 5),
              color: CustomColors.crazy_green,
              height: 6,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
