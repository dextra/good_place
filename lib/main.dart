import 'package:flutter/material.dart';
import 'package:good_place/good_place/home/home.dart';
import 'package:good_place/theme.dart';

void main() {
  runApp(MaterialApp(
    title: 'Liga do Bem',
    theme: GoodPlaceTheme.lightTheme,
    home: Home(),
  ));
}
