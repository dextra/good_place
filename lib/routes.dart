import 'package:flutter/material.dart';
import 'package:good_place/good_place/home/home_container.dart';

class Routes {
  static final root = '/';
  static final home = '/home';
  static final whoWeAre = '/whoWeAre';
  static final whatWeDo = '/whatWeDo';
  static final ourActions = '/ourActions';

  static Map<String, WidgetBuilder> get routes => {
        Routes.root: (context) => HomeContainer(),
        Routes.home: (context) => HomeContainer(),
      };
}
