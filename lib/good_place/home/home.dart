import 'package:flutter/material.dart';
import 'package:good_place/models/event.dart';
import 'package:good_place/widgets/base_scaffold.dart';

class Home extends StatelessWidget {
  final List<Event> events;
  final bool loading;

  const Home({this.events, this.loading});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
