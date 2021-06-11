import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:good_place/good_place/home/home.dart';
import 'package:good_place/models/event.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  List<Event> _events;
  bool _loading;

  void _loadData() async {
    String data = await rootBundle.loadString('assets/data/events.json');
    setState(() {
      _events = Event.parseList(jsonDecode(data));
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loading = true;
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Home(
      events: _events,
      loading: _loading,
    );
  }
}
