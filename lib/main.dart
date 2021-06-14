import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
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
      onGenerateRoute: Routes.generateRoutes,
    ),
  );
}
