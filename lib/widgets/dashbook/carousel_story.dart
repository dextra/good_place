import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:good_place/widgets/carousel.dart';

class CarouselStory {
  final Dashbook dashbook;

  CarouselStory(this.dashbook) {
    final imageSliders = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ]
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child:
                        Image.network(item, fit: BoxFit.cover, width: 1000.0)),
              ),
            ))
        .toList();

    dashbook.storiesOf('Carousel').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Carousel(
          items: imageSliders,
        );
      },
    );
  }
}
