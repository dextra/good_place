import 'package:flutter/material.dart';
import 'package:good_place/good_place/home/home.dart';
import 'package:good_place/utils/load_contend.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  late Future _loadNews;

  @override
  void initState() {
    super.initState();
    _loadNews = LoadContent().loadNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Home(
          news: snapshot.hasData ? snapshot.data : [],
          loading: !snapshot.hasData,
        );
      },
      future: _loadNews,
    );
  }
}
