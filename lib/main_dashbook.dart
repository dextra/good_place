import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';
import 'package:good_place/widgets/dashbook/event_card_story.dart';
import 'package:good_place/widgets/dashbook/base_scaffold_story.dart';
import 'package:good_place/widgets/dashbook/header_story.dart';
import 'package:good_place/widgets/dashbook/label_story.dart';

void main() {
  final dashbook = Dashbook(theme: ThemeData.light());

  EventCardStory(dashbook);
  HeaderStory(dashbook);
  BaseScaffoldStory(dashbook);
  LabelStory(dashbook);

  runApp(dashbook);
}
