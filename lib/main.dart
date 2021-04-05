import 'package:flutter/material.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/theme.dart';

void main() {
  runApp(MaterialApp(
    title: 'Liga do Bem',
    theme: GoodPlaceTheme.lightTheme,
    initialRoute: Routes.home,
    routes: Routes.routes,
  ));
}
