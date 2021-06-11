import 'package:dashbook/dashbook.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/bean_card.dart';

class BeanCardStory {
  final Dashbook dashbook;

  BeanCardStory(this.dashbook) {
    dashbook.storiesOf('Bean card').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return BeanCard(
          image: Assets.logo,
          buttonLabel: 'Saiba mais',
          onTap: () {},
        );
      },
    );
  }
}
