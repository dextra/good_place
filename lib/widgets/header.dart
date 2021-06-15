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
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: Padding(
              child: Image.asset(Assets.logo),
              padding: EdgeInsets.only(top: 10),
            ),
            onTap: () => Navigator.of(context).pushNamed(Routes.root),
          ),
        ),
        SizedBox(width: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _MenuItem(
              label: 'Home',
              selected: routeName == Routes.root,
              navigateTo: () => Navigator.of(context).pushNamed(Routes.root),
            ),
            SizedBox(width: 60),
            _MenuItem(
              label: 'Quem somos',
              selected: routeName == Routes.whoWeAre,
              navigateTo: () =>
                  Navigator.of(context).pushNamed(Routes.whoWeAre),
            ),
            SizedBox(width: 60),
            _MenuItem(
              label: 'Ações',
              selected: routeName == Routes.ourActions,
              navigateTo: () =>
                  Navigator.of(context).pushNamed(Routes.ourActions),
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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: navigateTo,
        child: Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
      ),
    );
  }
}
