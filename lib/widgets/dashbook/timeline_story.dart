import 'package:dashbook/dashbook.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/widgets/my_timeline.dart';

class TimelineStory {
  final Dashbook dashbook;

  TimelineStory(this.dashbook) {
    dashbook.storiesOf('Timeline').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        final events = [
          TimelineYear(
            label: '2021',
            months: [
              TimelineMonth(
                label: 'Junho',
                items: [
                  GenericItem(
                    title: 'Festa Junina Junho 1',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                  GenericItem(
                    title: 'Festa Junina Junho 2',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                  GenericItem(
                    title: 'Festa Junina Junho 3',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                ],
              ),
              TimelineMonth(
                label: 'Maio',
                items: [
                  GenericItem(
                    title: 'Festa Junina maio',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                ],
              ),
              TimelineMonth(
                label: 'Abril',
                items: [
                  GenericItem(
                    title: 'Festa Junina abril',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                ],
              ),
            ],
          ),
          TimelineYear(
            label: '2020',
            months: [
              TimelineMonth(
                label: 'Junho',
                items: [
                  GenericItem(
                    title: 'Festa Junina junho 2020',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                  GenericItem(
                    title: 'Festa Junina junho 2020 2',
                    description: 'Festa da Dextra 2021 online',
                    date: DateTime.now(),
                    content: 'Textão',
                    imageUrl: 'assets/data/images/festa_junina.jpg',
                  ),
                ],
              ),
            ],
          )
        ];

        return MyTimeline(events: events);
      },
    );
  }
}
