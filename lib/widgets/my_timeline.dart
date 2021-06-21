import 'package:flutter/material.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/label.dart';
import 'package:timelines/timelines.dart';

class MyTimeline extends StatelessWidget {
  final List<TimelineYear> events;

  const MyTimeline({@required this.events});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          indicatorTheme: IndicatorThemeData(position: 0, size: 40),
          connectorTheme:
              ConnectorThemeData(thickness: 2.5, color: CustomColors.dark_gray),
        ),
        builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: events.length,
            contentsBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  top: 7,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label(
                      text: events[index].label,
                      labelType: LabelType.title,
                    ),
                    FixedTimeline.tileBuilder(
                      builder: TimelineTileBuilder.connected(
                        itemCount: events[index].months.length,
                        contentsBuilder: (_, index) => Container(
                          height: 100,
                          width: 100,
                          color: Colors.indigoAccent,
                          child: Text(events[index].months[index].label),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: events[index]
                          .months
                          .map(
                            (month) => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TimelineTile(
                                    contents: Container(
                                      color: Colors.indigoAccent,
                                      height: 100,
                                      width: 100,
                                    ),
                                    node: TimelineNode(
                                        indicator: Card(
                                      margin: EdgeInsets.zero,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('Complex'),
                                      ),
                                    ))),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              );
            },
            indicatorBuilder: (_, index) => Indicator.widget(
                  child: Image.asset(Assets.timeline_marker),
                ),
            connectorBuilder: (_, index, ___) =>
                SolidLineConnector(color: CustomColors.crazy_green)),
      ),
    );
  }
}

class TimelineYear {
  final String label;
  final List<TimelineMonth> months;

  TimelineYear({@required this.label, @required this.months});
}

class TimelineMonth {
  final String label;
  final List<GenericItem> items;

  TimelineMonth({@required this.label, @required this.items});
}
