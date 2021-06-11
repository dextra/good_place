import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';
import 'package:good_place/widgets/button.dart';
import 'package:good_place/widgets/dashbook/bean_card_story.dart';
import 'package:good_place/widgets/dashbook/button_story.dart';
import 'package:good_place/widgets/dashbook/carousel_story.dart';
import 'package:good_place/widgets/dashbook/event_card_story.dart';
import 'package:good_place/widgets/dashbook/base_scaffold_story.dart';
import 'package:good_place/widgets/dashbook/header_story.dart';
import 'package:good_place/widgets/dashbook/label_story.dart';
import 'package:good_place/widgets/dashbook/news_story.dart';

void main() {
  final dashbook = Dashbook(theme: ThemeData.light());

  ButtonStory(dashbook);
  BeanCardStory(dashbook);
  CarouselStory(dashbook);
  NewsStory(dashbook);
  HeaderStory(dashbook);
  BaseScaffoldStory(dashbook);
  LabelStory(dashbook);

  runApp(dashbook);
}
