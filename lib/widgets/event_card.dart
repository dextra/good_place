import 'package:flutter/material.dart';
import 'package:good_place/models/event.dart';
import 'package:good_place/widgets/label.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 380,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (event.imageURL != null)
                Image.asset(
                  event.imageURL!,
                  height: 80,
                ),
              SizedBox(width: 20),
              Column(
                children: [
                  Label(
                    text: event.title,
                    labelType: LabelType.cardTitle,
                  ),
                  SizedBox(height: 8),
                  Container(
                    color: Colors.blue,
                    width: 250,
                    height: 200,
                    child: Label(
                      text: event.text,
                      labelType: LabelType.cardBodyTitle,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
