import 'package:flutter/material.dart';
import 'package:good_place/good_place/our_actions/our_actions.dart';
import 'package:good_place/utils/load_contend.dart';

class OurActionsContainer extends StatefulWidget {
  @override
  _OurActionsContainerState createState() => _OurActionsContainerState();
}

class _OurActionsContainerState extends State<OurActionsContainer> {
  Future _loadActions;

  @override
  void initState() {
    super.initState();
    _loadActions = LoadContent().loadActions();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return OurActions(
          actions: snapshot.hasData ? snapshot.data : [],
          loading: !snapshot.hasData,
        );
      },
      future: _loadActions,
    );
  }
}
