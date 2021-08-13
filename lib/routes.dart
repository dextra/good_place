import 'package:flutter/material.dart';
import 'package:good_place/good_place/generic_content/generic_content.dart';
import 'package:good_place/good_place/home/home_container.dart';
import 'package:good_place/good_place/our_actions/our_actions_container.dart';
import 'package:good_place/good_place/who_we_are/who_we_are.dart';
import 'package:good_place/models/generic_item.dart';

class Routes {
  static final root = '/';
  static final whoWeAre = '/whoWeAre';
  static final whatWeDo = '/whatWeDo';
  static final ourActions = '/ourActions';
  static final genericContent = '/genericContent';

  static Map<String, WidgetBuilderWithArgs> routes = {
    Routes.root: (context, args) => HomeContainer(),
    Routes.whoWeAre: (context, args) => WhoWeAre(),
    Routes.ourActions: (context, args) => OurActionsContainer(),
    Routes.genericContent: (context, args) {
      final genericData = args as GenericItem;

      return GenericContent(
        title: genericData.title,
        content: genericData.content,
        imageUrl: genericData.imageUrl,
      );
    },
  };

  static Route<Object> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;
    final routeArguments = settings.arguments;
    final route = routes[routeName];
// ver se está null
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          route?.call(context, routeArguments!) ??
          Container(
            child: const Text('Empty Route'),
          ),
      settings: settings,
    );
  }
}

typedef WidgetBuilderWithArgs = Widget Function(
  BuildContext context,
  Object args,
);
