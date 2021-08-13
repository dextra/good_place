import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:good_place/good_place/home/home_container.dart';
import 'package:good_place/good_place/who_we_are/who_we_are.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/theme.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting();
  setUrlStrategy(PathUrlStrategy());

  runApp(
    MaterialApp(
      title: 'Liga do Bem',
      theme: GoodPlaceTheme.lightTheme,
      initialRoute: Routes.root,
      //  home: HomeContainer(),
      onGenerateRoute: Routes.generateRoutes,
    ),
  );
}
