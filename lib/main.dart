import 'package:flutter/material.dart';
import 'package:good_place/routes.dart';
import 'package:good_place/theme.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting();

  runApp(
    MaterialApp(
      title: 'Liga do Bem',
      theme: GoodPlaceTheme.lightTheme,
      initialRoute: Routes.root,
      onGenerateRoute: Routes.generateRoutes,
    ),
  );
}
